.PHONY:	all assemble clean install

PROGRAMS= ad-v3 simple-test test-noram dvg-only

TARGETS=$(addsuffix .bin,$(PROGRAMS))

%.bin: %.a09
	lwasm --format=raw --list=$(basename $<).lis --output=$@ $<


all: $(TARGETS)

clean:
	rm -f *.lst *.map *.bin

assemble:
	lwasm --format=raw --list=ad-v3.lst --output=ad-v3.bin ad-v3.a09
	lwasm --format=raw --list=simple-test.lst --output=simple-test.bin simple-test.a09
	lwasm --format=raw --list=test-noram.lst --output=test-noram.bin test-noram.a09
	lwasm --format=raw --list=dvg-only.lst --output=dvg-only.bin dvg-only.a09

install: dvg-only.bin test-noram.in simple-test.bin ad-v3.bin
	cp *.bin ~/Projects/DVGAsm/Code
