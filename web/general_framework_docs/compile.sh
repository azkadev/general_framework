#!/bin/sh


mkdir -p ../../docs/
rm -rf ../../docs/
mkdir -p ../../docs/
flutter build web --release --no-web-resources-cdn --base-href /general_framework/ --web-renderer html


cp -rf build/web/* ../../docs/