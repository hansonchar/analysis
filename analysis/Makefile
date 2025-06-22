.PHONY: all cache build docs

all: build docs

cache:
	lake exe cache get

build: cache
	lake build

docs:
	DOCGEN_SRC="file" time lake -R -Kenv=dev build Analysis:docs
