.PHONY: program refresh sw bscore synth synth_and_prog refresh_and_prog

refresh_and_prog: | refresh program

program:
	$(MAKE) -C DE10LITE_quartus program

refresh: sw
	$(MAKE) -C DE10LITE_quartus refresh_prog

sw:
	$(MAKE) -C software

bscore:
	$(MAKE) -C Flute/src_SSITH_P2 clean compile

synth: sw bscore
	$(MAKE) -C DE10LITE_quartus synth

synth_and_prog: | synth program
