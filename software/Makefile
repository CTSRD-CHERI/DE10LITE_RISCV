.PHONY: all
all: mem.hex heartbeat.dump

mem.hex: heartbeat.o
	cat $< | riscv64-unknown-freebsd-objcopy -O binary - | hexdump -v -e '"%08x\n"' | python2 txt2hex.py /dev/stdin $@ 4

heartbeat.dump: heartbeat.o
	riscv64-unknown-freebsd-objdump -S $< > $@

heartbeat.o: heartbeat.S
	riscv64-unknown-freebsd-cc -fpic -march=rv64ima$(EXTENSIONS) -mabi=lp64 -mno-relax -c $< -o $@

.PHONY: clean
clean:
	rm -f heartbeat.o heartbeat.dump
