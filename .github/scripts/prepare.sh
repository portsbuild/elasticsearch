#!/bin/sh

#
# Copyright Elasticsearch B.V. and/or licensed to Elasticsearch B.V. under one
# or more contributor license agreements. Licensed under the "Elastic License
# 2.0", the "GNU Affero General Public License v3.0 only", and the "Server Side
# Public License v 1"; you may not use this file except in compliance with, at
# your election, the "Elastic License 2.0", the "GNU Affero General Public
# License v3.0 only", or the "Server Side Public License, v 1".
#

mkdir ~/.gradle

# "org.gradle.jvmargs="
{
  echo "org.gradle.java.installations.paths=/usr/local/openjdk17,/usr/local/openjdk21,/usr/local/openjdk25"
  echo "org.gradle.java.installations.auto-download=false"
  echo "org.gradle.console=plain"
  echo "org.gradle.caching=true"
  echo "org.gradle.daemon=false"
} > ~/.gradle/gradle.properties

{
  echo 'export GRADLE_OPTS=${GRADLE_OPTS:+"$GRADLE_OPTS "}--enable-native-access=ALL-UNNAMED'
} >> ~/.profile
