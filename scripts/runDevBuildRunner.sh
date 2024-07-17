#!/bin/bash
set -x

ROOT=$(pwd)

if ! [ -f "$ROOT/pubspec.yaml" ]; then
  ROOT=(dirname ${pwd})
fi

if ! [ -f "$ROOT/pubspec.yaml" ]; then
  exit 1
fi

cd $ROOT

# Flutter clean
flutter clean

# Run pub get
flutter pub get

# Run import sorter
dart run import_sorter:main
