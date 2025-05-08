#include <at89x52.h>

// === LCD Control Pins ===
__sbit __at (0xB0) RS;     // P3.0
__sbit __at (0xB1) EN;     // P3.1

// === ADC0809 Control Pins ===
__sbit __at (0xA0) START;  // P2.0
__sbit __at (0xA1) EOC;    // P2.1
__sbit __at (0xA2) ALE;    // P2.2
__sbit __at (0xA3) OE;     // P2.3

// === LED Pins ===
__sbit __at (0xB2) LED_GOOD;    
__sbit __at (0xB3) LED_NEUTRAL; 
__sbit __at (0xB5) LED_POOR;    

// === I2C Pins for RTC ===
__sbit __at (0x96) SDA;  // P1.6
__sbit __at (0x97) SCL;  // P1.7

// === Motor Control Pin ===
__sbit __at (0xB6) MOTOR;  // P3.7  


// === Delay Function ===
void delay(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++)
        for (j = 0; j < 1275; j++);
}

// === LCD Functions ===
void lcd_cmd(unsigned char cmd) {
    RS = 0;
    P0 = cmd;
    EN = 1; delay(1); EN = 0; delay(2);
}

void lcd_data(unsigned char data) {
    RS = 1;
    P0 = data;
    EN = 1; delay(1); EN = 0; delay(2);
}

void lcd_init(void) {
    delay(20);
    lcd_cmd(0x38);
    lcd_cmd(0x0C);
    lcd_cmd(0x06);
    lcd_cmd(0x01);
    delay(2);
}

void lcd_print(char *str) {
    while (*str) {
        lcd_data(*str++);
    }
}

// === I2C Bit-Banging ===
void i2c_start() {
    SDA = 1; SCL = 1; delay(1);
    SDA = 0; delay(1); SCL = 0;
}

void i2c_stop() {
    SDA = 0; SCL = 1; delay(1);
    SDA = 1; delay(1);
}

unsigned char i2c_write(unsigned char dat) {
    unsigned char i;
    for (i = 0; i < 8; i++) {
        SDA = (dat & 0x80) ? 1 : 0;
        SCL = 1; delay(1);
        SCL = 0; delay(1);
        dat <<= 1;
    }
    SDA = 1; SCL = 1; delay(1);
    unsigned char ack = !SDA;
    SCL = 0;
    return ack;
}

unsigned char i2c_read(unsigned char ack) {
    unsigned char i, dat = 0;
    SDA = 1;
    for (i = 0; i < 8; i++) {
        SCL = 1;
        dat = (dat << 1) | SDA;
        SCL = 0;
    }
    SDA = !ack;
    SCL = 1; delay(1);
    SCL = 0;
    SDA = 1;
    return dat;
}

// === BCD to Decimal Conversion ===
unsigned char bcd_to_decimal(unsigned char bcd) {
    return ((bcd >> 4) * 10) + (bcd & 0x0F);
}

// === RTC Read Date (DS1307) ===
void rtc_get_date(unsigned char *day, unsigned char *month, unsigned char *year) {
    i2c_start();
    i2c_write(0xD0);      // DS1307 write address
    i2c_write(0x04);      // Point to date register
    i2c_stop();

    i2c_start();
    i2c_write(0xD1);      // DS1307 read address
    *day = bcd_to_decimal(i2c_read(1));
    *month = bcd_to_decimal(i2c_read(1));
    *year = bcd_to_decimal(i2c_read(0));
    i2c_stop();
}

// === ADC0809 Read Function ===
unsigned char adc_read(void) {
    unsigned char adc_value;
    ALE = 1; delay(1); ALE = 0;
    START = 1; delay(1); START = 0;
    while (EOC);
    OE = 1;
    adc_value = P1;
    OE = 0;
    return adc_value;
}

// === Display pH Reading ===
void display_ph_value(void) {
    unsigned char adc_val = adc_read();
    int ph_scaled = ((adc_val - 130) * 1600) / 125 + 700;

    if (ph_scaled < 0) ph_scaled = 0;
    if (ph_scaled > 1400) ph_scaled = 1400;

    unsigned char int_part = ph_scaled / 100;
    unsigned char dec1 = (ph_scaled / 10) % 10;
    unsigned char dec2 = ph_scaled % 10;

    lcd_cmd(0x01);
    lcd_cmd(0x80); lcd_print("WATER QUALITY");
    lcd_cmd(0xC0); lcd_print("pH:");
    lcd_data(int_part + '0');
    lcd_data('.');
    lcd_data(dec1 + '0');
    lcd_data(dec2 + '0');
    lcd_print(" ");

    if (ph_scaled >= 650 && ph_scaled <= 850) {
        lcd_print("Good");
        LED_GOOD = 0; LED_NEUTRAL = 1; LED_POOR = 1;
    } else if ((ph_scaled >= 450 && ph_scaled < 650) || (ph_scaled > 850 && ph_scaled <= 900)) {
        lcd_print("Neutral");
        LED_GOOD = 1; LED_NEUTRAL = 0; LED_POOR = 1;
    } else {
        lcd_print("Poor");
        LED_GOOD = 1; LED_NEUTRAL = 1; LED_POOR = 0;
    }
}

// === Display Date on LCD ===
void display_date(void) {
    unsigned char day, month, year;
    rtc_get_date(&day, &month, &year);

    lcd_cmd(0x01);
    lcd_cmd(0x80); lcd_print("DATE:");
    lcd_cmd(0xC0);

    lcd_data((day / 10) + '0');
    lcd_data((day % 10) + '0');
    lcd_data('-');
    lcd_data((month / 10) + '0');
    lcd_data((month % 10) + '0');
    lcd_data('-');
    lcd_data((year / 10) + '0');
    lcd_data((year % 10) + '0');
}

// === Main Program ===
void main(void) {
    unsigned int i;
    lcd_init();
	MOTOR =0;
	lcd_print("Transfers Water");
	delay(500);
    while (1) {
        // Show pH for 60 seconds
        for (i = 0; i < 60; i++) {
            display_ph_value();
            delay(1000);  // 1 sec
        }

        // Show date for 30 seconds
        for (i = 0; i < 30; i++) {
            display_date();
            delay(1000);  // 1 sec
        }
    }
}
