#!/usr/bin/env bash

# Flutter download aur install karne ke liye
git clone https://github.com/flutter/flutter.git -b stable
export PATH="$PATH:`pwd`/flutter/bin"

# Flutter ki health check
flutter doctor

# Web build shuru karna
flutter build web
