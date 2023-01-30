#!/bin/bash

OUT_DIR=./out/wasi-secrets
SRC_DIR=$OUT_DIR/src
VERSION="0.0.0"

wit-bindgen guest rust --out-dir $SRC_DIR --rustfmt wit/wasi-secrets.wit
mv $SRC_DIR/wasi-secrets.rs $SRC_DIR/lib.rs
echo "[package]
name = \"wasi-secrets\"
version = \"$VERSION\"
" >> $OUT_DIR/Cargo.toml
