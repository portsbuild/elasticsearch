#!/bin/sh

mkdir ~/.gradle

# "org.gradle.jvmargs="
{
  echo "runtime.java=/usr/local/openjdk26"
  echo "org.gradle.java.installations.paths=/usr/local/openjdk17,/usr/local/openjdk21,/usr/local/openjdk25,/usr/local/openjdk26"
  echo "org.gradle.java.installations.auto-download=false"
  echo "org.gradle.console=plain"
  echo "org.gradle.caching=true"
  echo "org.gradle.daemon=false"
  echo "org.gradle.project.org.elasticsearch.additional.muted.tests=muted-tests-freebsd.yml"
  # echo "tests.jvm.argline=\"--add-modules=jdk.incubator.vector --enable-native-access=ALL-UNNAMED -XX:ActiveProcessorCount=8\""
} > ~/.gradle/gradle.properties

{
  # echo "export RUNTIME_JAVA_HOME=/usr/local/openjdk26 ; export JAVA_TOOLCHAIN_HOME=/usr/local/openjdk26"
  # echo "export LOCAL_VEC_BINARY_OS=freebsd ; export LOCAL_ZSTD_BINARY=true ; export NATIVE_BUILD=local ;"
  echo 'export GRADLE_OPTS=${GRADLE_OPTS:+"$GRADLE_OPTS "}--enable-native-access=ALL-UNNAMED'
} >> ~/.profile
