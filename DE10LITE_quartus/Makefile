QUARTUS ?= quartus
QSYS ?= qsys-generate

.PHONY: error
error:
	@echo To avoid accidental effects, please specify a target \(qsys, synth, refresh_prog, program, report, clean\)

.PHONY: qsys
qsys: clean
	$(QSYS) DE10LITE_Qsys.qsys --block-symbol-file --output-directory=DE10LITE_Qsys --family="MAX 10" --part=10M50DAF484C7G
	$(QSYS) DE10LITE_Qsys.qsys --synthesis=VERILOG --output-directory=DE10LITE_Qsys/synthesis --family="MAX 10" --part=10M50DAF484C7G

.PHONY: synth
synth: qsys
	$(QUARTUS)_map DE10LITE_RISCV -c DE10LITE_RISCV
	$(QUARTUS)_fit DE10LITE_RISCV -c DE10LITE_RISCV
	$(QUARTUS)_asm DE10LITE_RISCV -c DE10LITE_RISCV
	$(QUARTUS)_sta DE10LITE_RISCV -c DE10LITE_RISCV

.PHONY: refresh_prog
refresh_prog:

.PHONY: program
program:

.PHONY: report
report:

.PHONY: clean
clean:
	rm -rf DE10LITE_Qsys/synthesis/ output_files/ db/ incremental_db/
