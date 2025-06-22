.PHONY: all fetch rebase analysis book

all: rebase analysis book

fetch:
	git fetch upstream

rebase: fetch
	git rebase upstream/main

analysis:
	$(MAKE) -C analysis

book:
	$(MAKE) -C book
