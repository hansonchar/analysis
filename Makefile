.PHONY: cond all rebase fetch build

cond: fetch
	@HEAD=$$(git rev-parse HEAD^^); \
	UPSTREAM=$$(git rev-parse upstream/main); \
	if [ "$$HEAD" = "$$UPSTREAM" ]; then \
		echo "Current branch is up to date. Skipping the rest."; \
		exit 0; \
	else \
		$(MAKE) all; \
	fi

all: rebase build

rebase: fetch
	git rebase upstream/main

fetch:
	git fetch upstream

build:
	@time build.sh
