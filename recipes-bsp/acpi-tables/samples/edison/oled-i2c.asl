/*
 * Intel Edison
 *
 * This adds ssd1306 i2c oled screen device to the i2c host controller available on
 * Edison Arduino breadboard.
 *
 * In Linux you need to set CONFIG_FB_SSD1307=y (or m) to be able to use
 * this device.
 *
 * Copyright (C) 2017, Intel Corporation
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
DefinitionBlock ("oled-i2c.aml", "SSDT", 5, "Vendor", "OLEDI2C", 1)
{
    #define MUX_I2C
    #define MUX_SPI
    #define MUX_UART_2WIRE

   #include "arduino.asli"
   #include "spidev.asli"
   #include "ssd1306-s.asli"
}
