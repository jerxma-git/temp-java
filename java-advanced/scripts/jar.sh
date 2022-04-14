#!/usr/bin/env bash

TEST_DIR="../java-advanced-2022"
[ ! -d "$TEST_DIR" ] && echo "Test directory not found" && exit 1
OUT_DIR="out"
javac -d "$OUT_DIR"\
    --module-path "$TEST_DIR"/artifacts:"$TEST_DIR"/lib\
    java-solutions/info/kgeorgiy/ja/zheromskij/implementor/*.java java-solutions/module-info.java

jar --create --file java-solutions/info.kgeorgiy.ja.zheromskij.implementor.jar --manifest java-solutions/manifest.mf -C "$OUT_DIR" .