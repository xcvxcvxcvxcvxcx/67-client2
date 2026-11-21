#!/usr/bin/env sh
set -eu
GRADLE_VERSION=9.2.0
BASE="${GRADLE_USER_HOME:-$HOME/.gradle}/wrapper/dists/gradle-${GRADLE_VERSION}-bin/67client-bootstrap"
DIST="$BASE/gradle-${GRADLE_VERSION}"
if [ ! -x "$DIST/bin/gradle" ]; then
  mkdir -p "$BASE"
  ARCHIVE="$BASE/gradle-${GRADLE_VERSION}-bin.zip"
  if command -v curl >/dev/null 2>&1; then
    curl -fL "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" -o "$ARCHIVE"
  elif command -v wget >/dev/null 2>&1; then
    wget -O "$ARCHIVE" "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"
  else
    echo "Install curl or wget to download Gradle ${GRADLE_VERSION}." >&2; exit 1
  fi
  unzip -q -o "$ARCHIVE" -d "$BASE"
fi
exec "$DIST/bin/gradle" "$@"
