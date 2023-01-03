.PHONY: grey seq copy clean

all: grey seq copy

grey:
	ls target | grep png | awk '{ printf "convert target/%s -type GrayScale tmp/greyed/%s\n", $$0, $$0, NR }' | sh

seq: grey
	ls tmp/greyed | grep png | awk '{ printf "cp tmp/greyed/%s tmp/numbered/bg_ss%02d.png\n", $$0, NR }' | sh

copy: seq
	cp tmp/numbered/* out/

clean:
	-rm -f tmp/greyed/*.png tmp/numbered/*.png out/*.png
