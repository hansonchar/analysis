.PHONY: all analysis book

all: analysis book

analysis:
	$(MAKE) -C analysis

book:
	$(MAKE) -C book
