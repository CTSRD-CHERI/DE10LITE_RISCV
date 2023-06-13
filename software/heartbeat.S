#include "DE10Lite.h"

.global start
_start:
  li t0, DE10LITE_SWITCH_START
  li t1, DE10LITE_LED_START
lp:
  lw t2, 0(t0)
  sw t2, 0(t1)
  j lp
