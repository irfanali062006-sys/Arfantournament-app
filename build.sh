#!/bin/bash

# Flutter download karo
git clone https://github.com/flutter/flutter.git -b stable

# Path set karo
export PATH="$PATH:`pwd`/flutter/bin"

# Flutter doctor check karo
flutter doctor

# Web build karo
flutter build web --release
