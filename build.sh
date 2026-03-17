#!/bin/bash

# 1. Flutter clone karo
git clone https://github.com/flutter/flutter.git -b stable

# 2. Path set karo
export PATH="$PATH:`pwd`/flutter/bin"

# 3. Web support enable karo
flutter config --enable-web

# 4. Project files ko fix karo
flutter create . --platforms web

# 5. Build shuru karo
flutter build web --release
