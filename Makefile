shell:=/bin/bash -e
export SHELLOPTS=pipefail

.PHONY = all clean

all: bin/simpleHilbertCurve.py

bin/simpleHilbertCurve.py: src/simpleHilbertCurve.py
	mkdir -p $(dir $@)
	cp $< $@.tmp
	chmod 755 $@.tmp
	mv $@.tmp $@

clean:
	rm -rf bin/
