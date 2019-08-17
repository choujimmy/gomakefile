
.PHONY: all
all: lint test build

# ==============================================================================
# Build Options

ROOT_PACKAGE=github.com/choujimmy/gomakefile
VERSION_PACKAGE=$(ROOT_PACKAGE)/pkg/app/version

# ==============================================================================
# Includes

include build/lib/common.mk
include build/lib/golang.mk
include build/lib/image.mk

# ==============================================================================
# Targets

## build: Build source code for host platform.
.PHONY: build
build:
	@$(MAKE) go.build

## build.all: Build source code for all platforms.
.PHONY: build.all
build.all:
	@$(MAKE) go.build.all
	
## image: Build docker images and push to registry.
.PHONY: image
image:
	@$(MAKE) image.push

## clean: Remove all files that are created by building.
.PHONY: clean
clean:
	@$(MAKE) go.clean

## lint: Check syntax and styling of go sources.
.PHONY: lint
lint:
	@$(MAKE) go.lint

## test: Run unit test.
.PHONY: test
test:
	@$(MAKE) go.test

## help: Show this help info.
.PHONY: help
help: Makefile
	@echo -e "\nUsage: make <OPTIONS> ... <TARGETS>\n\nTargets:"
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'

