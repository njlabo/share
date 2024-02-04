MDS=$(shell ls job-post-*.md)
PDFS=$(MDS:.md=.pdf)

all: $(PDFS)

%.pdf: %.md
	pandoc \
	-V colorlinks=true \
	-V linkcolor=blue \
	-V urlcolor=blue \
	-V toccolor=gray \
	$< -o $@

clean:
	rm -f $(PDFS)

.PHONY: all clean
