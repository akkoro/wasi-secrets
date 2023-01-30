#!/bin/bash

OUT_DIR=./out/wasi-secrets
SRC_DIR=$OUT_DIR/src

wit-bindgen guest rust --out-dir $SRC_DIR --rustfmt wit/wasi-secrets.wit
mv $SRC_DIR/wasi-secrets.rs $SRC_DIR/lib.rs
echo "[package]
name = \"wasi-secrets\"
version = \"0.0.0\"
" >> $OUT_DIR/Cargo.toml
