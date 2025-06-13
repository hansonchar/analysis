.PHONY: all build docs

all: build docs

build:
	@echo "Building"
	@lake build

docs:
	@echo 'Building Analysis:docs with DOCGEN_SRC="file"'
	@DOCGEN_SRC="file" time lake -R -Kenv=dev build Analysis:docs
