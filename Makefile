.PHONY: all
all: check

.PHONY: build
build:
	@cargo build --all

.PHONY: doc
doc:
	@cargo doc

.PHONY: check
check:
	@cargo check --all

.PHONY: format
format:
	@rustup component add rustfmt 2> /dev/null
	@cargo fmt --all

.PHONY: format-check
format-check:
	@rustup component add rustfmt 2> /dev/null
	@cargo fmt --all -- --check

.PHONY: lint
lint:
	@rustup component add clippy 2> /dev/null
	@cargo clippy --all -- -F clippy::dbg-macro -D warnings
