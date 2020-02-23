#!/bin/bash
# https://github.com/bazelbuild/bazel/issues/1308
# export BAZEL_JAVAC_OPTS="-J-Xms384m -J-Xmx1024m"
# export JAVAC_OPTS="--release 8 -source 8 -target 8"
# export JAVA_HOME=/opt/jdk1.8.0_231
# export JDK_HOME=/opt/jdk1.8.0_231
# export PATH=$JAVA_HOME/bin:$PATH
# javac -version
env BAZEL_JAVAC_OPTS="-J-Xms384m -J-Xmx1g" EXTRA_BAZEL_ARGS="--host_javabase=@local_jdk//:jdk" bash ./compile.sh
