# Self-Replace: A Utility For Self Replacing Executables

[![Build Status](https://github.com/mitsuhiko/self-replace/workflows/Tests/badge.svg?branch=main)](https://github.com/mitsuhiko/self-replace/actions?query=workflow%3ATests)
[![Crates.io](https://img.shields.io/crates/d/self-replace.svg)](https://crates.io/crates/self-replace)
[![License](https://img.shields.io/github/license/mitsuhiko/self-replace)](https://github.com/mitsuhiko/self-replace/blob/main/LICENSE)
[![rustc 1.48.0](https://img.shields.io/badge/rust-1.48%2B-orange.svg)](https://img.shields.io/badge/rust-1.48%2B-orange.svg)
[![Documentation](https://docs.rs/self-replace/badge.svg)](https://docs.rs/self-replace)

`self-replace` is a crate that allows binaries to replace themselves with newer
versions or to uninstall themselves.  On Unix systems this is a simple feat, but
on Windows a few hacks are needed which is why this crate exists.

This is a useful operation when working with single-executable utilties that want to implement a form of self updating or self uninstallation.

## Uninstall

To uninstall a binary, use `self_delete`.

```rust
self_replace::self_delete()?;
```

## Updating

To replace a binary for updating, use `self_replace`.

```rust
let new_binary = "/path/to/new/binary";
self_replace::self_replace(&new_binary)?;
std::fs::remove_file(&new_binary)?;
```

## License and Links

* [Documentation](https://docs.rs/self-replace/)
* [Issue Tracker](https://github.com/mitsuhiko/self-replace/issues)
* [Examples](https://github.com/mitsuhiko/self-replace/tree/main/examples)
* License: [Apache-2.0](https://github.com/mitsuhiko/self-replace/blob/main/LICENSE)
