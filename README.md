#DE10LITE\_RISCV

This is a project for putting a RISC-V core on the DE10Lite board.

##Dependencies

Expects `quartus_*` and `qsys-generate` to be in path.
Alternatively, you can specify the path to the `quartus` binary and `qsys-generate` binary with `QUARTUS=<path> QSYS=<path>` environment variables.
Only tested with Quartus 18.1.0 standard edition.
Makefiles will insist you use this version unless you set `VERSION=<your version>`.

Software assumes the existence of a toolchain: `riscv64-unknown-freebsd-*`.
You also need `hexdump` and `python2`.

To program, you may need to install `92-usbblaster.rules` in `/etc/udev/rules.d/`.
These need to be refreshed with a reboot or `udevadm control --reload-rules && udevadm trigger`.
You may also need to run `jtagconfig`.

##Software

See `software/DE10Lite.h` for definitions of address map.
`heartbeat.S` is a very simple example program that copies the state of the switches to the LEDs.

`make software` builds `software/mem.hex` that is picked up by Quartus and initialised into the onchip memory.
`make refresh_prog` rebuilds the bitfile with the new initialisation file.
`make program` will then copy this bitfile onto the board.
`make refresh_and_prog` will do all of these things and is the default Makefile target.

##Building a bitfile

Ensure you have checked out the relevant core submodule (e.g. Flute) with `git submodule update --init --recursive`.
`make synth` will build the verilog from the Bluespec, and build a bitfile with Quartus.
Output is filtered to just errors and critical warnings.
The synthesis will also report FMax and logic utilisation.
`clk[1]` is the clock used for the RISC-V core.
Use `make bscore` to only build the verilog from the Bluespec without invoking Quartus.
