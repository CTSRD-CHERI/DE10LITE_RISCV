#include "DE10Lite.h"

.global start
#if __has_feature(capabilities)
_start:
# XXX This is still untested!
  cmove ct0, c0
  cspecialrw ct0, ddc, ct0
  li t1, DE10LITE_SWITCH_START
  csetaddr ct2, ct0, t1
  csetboundsimm ct2, ct2, 16
  li t1, DE10LITE_LED_START
  csetaddr ct3, ct0, t1
  csetboundsimm ct3, ct3, 16
lp:
  lw.cap t4, 0(ct2)
  sw.cap t4, 0(ct3)
  j lp
#else
_start:
  li t0, DE10LITE_SWITCH_START
  li t1, DE10LITE_LED_START
lp:
  lw t2, 0(t0)
  sw t2, 0(t1)
  j lp
#endif
