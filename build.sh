#!/bin/bash

# 1. Flutter clone karo (Stable version)
git clone https://github.com/flutter/flutter.git -b stable

# 2. Path set karo taaki terminal ko flutter mil sake
export PATH="$PATH:`pwd`/flutter/bin"

# 3. Web support enable karo (Ye line missing thi)
flutter config --enable-web

# 4. Web folder aur files create karo (Ye error fix karega)
flutter create . --platforms web

# 5. Build process shuru karo
flutter build web --release
