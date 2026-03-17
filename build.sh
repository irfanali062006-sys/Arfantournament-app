#!/usr/bin/env bash

git clone https://github.com/flutter/flutter.git -b stable
export PATH="$PATH:`pwd`/flutter/bin"

# YE LINE ZAROORI HAI: Ye web folder bana degi
flutter create . --platforms web

flutter build web
