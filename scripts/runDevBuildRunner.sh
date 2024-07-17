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

echo "Run flutter clean"
flutter clean

echo "Run flutter pub get"
flutter pub get

echo "Run generated code command"
flutter pub run build_runner clean && flutter pub run build_runner build --delete-conflicting-outputs

echo "Run import_sorter"
dart run import_sorter:main
