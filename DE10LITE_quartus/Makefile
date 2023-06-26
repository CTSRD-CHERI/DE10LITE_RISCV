QUARTUS ?= quartus
QSYS ?= qsys-generate
VERSION ?= "18.1.0"
FREQ_MHZ ?= 25000000 # XXX Just used for FMax computation. Not yet passed into quartus
PROCESSOR ?= flute

FILTER = 2>&1 | grep -e 'Error (.*): ' -e 'Critical Warning (.*): ' || [ $$? -lt 2 ]

.PHONY: error
error:
	@echo To avoid accidental effects, please specify a target \(qsys, synth, refresh_prog, program, report, clean\)

.PHONY: version
version:
	@$(QUARTUS)_sh --version | grep $(VERSION) || (echo "Please use $(VERSION) of Quartus or override VERSION with your version"; false)

.PHONY: qsys
qsys: | version clean
	@echo generating qsys hdl...
	sed -e "s/RISCV_PROC_PLACEHOLDER/$(PROCESSOR)/g" DE10LITE_Qsys.qsys.template > DE10LITE_Qsys.qsys
	@$(QSYS) DE10LITE_Qsys.qsys --block-symbol-file --output-directory=DE10LITE_Qsys --family="MAX 10" --part=10M50DAF484C7G $(FILTER)
	@$(QSYS) DE10LITE_Qsys.qsys --synthesis=VERILOG --output-directory=DE10LITE_Qsys/synthesis --family="MAX 10" --part=10M50DAF484C7G $(FILTER)

.PHONY: report
report:
	@grep -A3 "Total logic elements" output_files/DE10LITE_RISCV.fit.summary
	@grep "Total memory bits" output_files/DE10LITE_RISCV.fit.summary
	@echo
	@grep -B1 -A8 "; Slow.*85C.*.*Fmax" output_files/DE10LITE_RISCV.sta.rpt

.PHONY: synth_in synth
synth_in: qsys
	@echo quartus analysing...
	@$(QUARTUS)_map DE10LITE_RISCV -c DE10LITE_RISCV $(FILTER)
	@echo quartus fitting...
	@$(QUARTUS)_fit DE10LITE_RISCV -c DE10LITE_RISCV $(FILTER)
	@echo quartus assembling...
	@$(QUARTUS)_asm DE10LITE_RISCV -c DE10LITE_RISCV $(FILTER)
	@echo quartus timing analysis...
	@$(QUARTUS)_sta DE10LITE_RISCV -c DE10LITE_RISCV $(FILTER)
synth: | synth_in report

.PHONY: refresh_prog
refresh_prog: version
	@echo regenerating initialisation...
	@$(QUARTUS)_cdb DE10LITE_RISCV -c DE10LITE_RISCV --update_mif $(FILTER)
	@echo rebuilding bitfile...
	@$(QUARTUS)_asm DE10LITE_RISCV -c DE10LITE_RISCV $(FILTER)

.PHONY: program
program:
	@echo programming...
	@$(QUARTUS)_pgm -m jtag program.cdf $(FILTER)

.PHONY: clean
clean:
	rm -rf DE10LITE_Qsys/synthesis/ output_files/ db/ incremental_db/ DE10LITE_Qsys.qsys DE10LITE_Qsys/
