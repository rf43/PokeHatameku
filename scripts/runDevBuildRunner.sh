#!/bin/bash
set -x

ROOT=$(pwd)

if ! [ -f "$ROOT/pubspec.yaml" ]; then
  ROOT=(dirname "${pwd}")
fi

if ! [ -f "$ROOT/pubspec.yaml" ]; then
  exit 1
fi

cd "$ROOT" || exit 1

echo "Run flutter clean"
flutter clean

echo "Run flutter pub get"
flutter pub get

echo "Run generated code command"
dart pub run build_runner clean && dart pub run build_runner build --delete-conflicting-outputs

echo "Run import_sorter"
dart run import_sorter:main --no-comments

echo "Run analyze"
dart analyze --fatal-infos --fatal-warnings
