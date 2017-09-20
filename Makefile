.PHONY:	all assemble clean

all: assemble

clean:
	rm -f *.lst *.map *.bin

test: all
	lwasm --format=raw --list=ad-v3.lst --output=ad-v3.bin ad-v3.asm
