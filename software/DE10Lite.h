#define DE10LITE_SDRAM_START  0x00000000
#define DE10LITE_SDRAM_END    0x04000000

#define DE10LITE_ONCHIP_START 0x04020000
#define DE10LITE_ONCHIP_END   0x040386a0

#define DE10LITE_TIMER_START  0x04041000
#define DE10LITE_TIMER_END    0x04041020
#define DE10LITE_KEY_START    0x04041020
#define DE10LITE_KEY_END      0x04041030
#define DE10LITE_PLL_START    0x04041030
#define DE10LITE_PLL_END      0x04041040
#define DE10LITE_UART_START   0x04041040
#define DE10LITE_UART_END     0x04041048
#define DE10LITE_SYSID_START  0x04041048
#define DE10LITE_SYSID_END    0x04041050

#define DE10LITE_SWITCH_START 0x04050000
#define DE10LITE_SWITCH_END   0x04050010
#define DE10LITE_LED_START    0x04050010
#define DE10LITE_LED_END      0x04050020

#define DE10LITE_PLIC_START   0x0c000000
#define DE10LITE_PLIC_END     0x0c400000

#define DE10LITE_CLINT_START  0x10000000
#define DE10LITE_CLINT_END    0x10010000

#define DE10LITE_KEY_IRQ      0
#define DE10LITE_UART_IRQ     1
#define DE10LITE_TIMER_IRQ    2
#define DE10LITE_SWITCH_IRQ   3

#define DE10LITE_FREQ_HZ      25000000

#define DE10LITE_START_PC     DE10LITE_ONCHIP_START