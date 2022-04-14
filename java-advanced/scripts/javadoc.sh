#!/usr/bin/env sh

TEST_DIR="../java-advanced-2022"
[ ! -d "$TEST_DIR" ] && echo "Test directory not found" && exit 1

IMPLEMENTOR_PATH=$TEST_DIR/modules/info.kgeorgiy.java.advanced.implementor/info/kgeorgiy/java/advanced/implementor/
javadoc -private -d javadoc -author -version -link https://docs.oracle.com/en/java/javase/17/docs/api/ \
    java-solutions/info/kgeorgiy/ja/zheromskij/implementor/*.java \
    $IMPLEMENTOR_PATH/Impler.java \
    $IMPLEMENTOR_PATH/JarImpler.java \
    $IMPLEMENTOR_PATH/ImplerException.java \
    $IMPLEMENTOR_PATH/package-info.java