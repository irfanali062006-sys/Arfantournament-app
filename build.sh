#!/bin/bash
git clone https://github.com/flutter/flutter.git -b stable
export PATH="$PATH:`pwd`/flutter/bin"
flutter config --enable-web
flutter create . --platforms web
flutter build web --release
