.PHONY: all cache build docs

all: build docs

cache:
	lake exe cache get

build: cache
	time lake build

docs:
	time DOCGEN_SRC="file" time lake -R -Kenv=dev build Analysis:docs
