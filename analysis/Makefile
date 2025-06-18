.PHONY: all cache build docs

all: build docs

build: cache
	@echo "Building"
	@lake build

cache:
	@echo "Download cached build files"
	@lake exe cache get

docs:
	@echo 'Building Analysis:docs with DOCGEN_SRC="file"'
	@DOCGEN_SRC="file" time lake -R -Kenv=dev build Analysis:docs
