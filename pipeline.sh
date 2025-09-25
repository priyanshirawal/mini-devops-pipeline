#!/bin/bash
echo "⚙️ Running Mini DevOps Pipeline..."

./build.sh && ./deploy.sh && ./monitor.sh

echo "🎉 Pipeline finished!"
