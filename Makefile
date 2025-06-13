.PHONY: cond all fetch rebase analysis book

cond: fetch
	@HEAD=$$(git rev-parse HEAD^); \
	UPSTREAM=$$(git rev-parse upstream/main); \
	if [ "$$HEAD" = "$$UPSTREAM" ]; then \
		echo "Current branch is up to date. Skipping the rest."; \
		exit 0; \
	else \
		$(MAKE) all; \
	fi

all: rebase analysis book

fetch:
	git fetch upstream

rebase: fetch
	git rebase upstream/main

analysis:
	$(MAKE) -C analysis

book:
	$(MAKE) -C book
