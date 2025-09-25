#!/bin/bash
echo "🔨 Building application..."

BUILD_DIR=/home/$USER/build

mkdir -p $BUILD_DIR
cp -r /home/$USER/myapp/* $BUILD_DIR/

if [ -f $BUILD_DIR/index.html ]; then
    echo "✅ Build successful!"
else
    echo "❌ Build failed!"
    exit 1
fi
