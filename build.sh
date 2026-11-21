#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
./gradlew build
mkdir -p MOD-JAR
cp build/libs/67-client-1.0.0.jar MOD-JAR/
echo "OK ! Ton mod est ici : MOD-JAR/67-client-1.0.0.jar"
