/*
 * Intel Edison
 *
 * This adds ssd1331 SPI oled screen device to the SPI host controller available on
 * Edison Arduino breadboard.
 *
 * In Linux you need to set CONFIG_SPI_SPIDEV=y (or m) to be able to use
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
DefinitionBlock ("oledspi.aml", "SSDT", 5, "Vendor", "OLEDSPI", 1)
{
    #define MUX_I2C
    #define MUX_SPI
    #define MUX_UART_2WIRE

#define DIG7_PU_PD_HOG	Name (REPU, Package () { ToUUID("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"), Package () { Package () { "gpio-hog", 1 }, Package () { "gpios", Package () { 7, 0 } }, Package () { "input", 1 }, Package () { "line-name", "oled-reset-pu" }, } })
#define DIG7_PU_PD_REF	Package () { "oled-reset-pu", "REPU" },
#define CONF_DIG7_PU_PD

#define MUX32_DIR_HOG	Name (REMX, Package () { ToUUID("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"), Package () { Package () { "gpio-hog", 1 }, Package () { "gpios", Package () { 7, 0 } }, Package () { "output-high", 1 }, Package () { "line-name", "oled-reset-mux" }, } })
#define MUX32_DIR_REF	Package () { "oled-reset-mux", "REMX" },
#define CONF_MUX32_DIR

#define DIG8_PU_PD_HOG  Name (DCPU, Package () { ToUUID("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"), Package () { Package () { "gpio-hog", 1 }, Package () { "gpios", Package () { 8, 0 } }, Package () { "input", 1 }, Package () { "line-name", "oled-cmd-pu" }, } })
#define DIG8_PU_PD_REF  Package () { "oled-cmd-pu", "DCPU" },
#define CONF_DIG8_PU_PD

#define MUX30_DIR_HOG	Name (DCMX, Package () { ToUUID("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"), Package () { Package () { "gpio-hog", 1 }, Package () { "gpios", Package () { 8, 0 } }, Package () { "output-high", 1 }, Package () { "line-name", "oled-cmd-mux" }, } })
#define MUX30_DIR_REF	Package () { "oled-cmd-mux", "DCMX" },
#define CONF_MUX30_DIR

   #include "arduino.asli"
   #include "ssd1331.asli"
}
