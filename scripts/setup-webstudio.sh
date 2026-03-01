#!/bin/bash
set -e

# Setup script for Webstudio integration in ModuSnap
# This script builds the core packages needed for the renderer and designer.

WEBSTUDIO_DIR="/Users/mtheunexpected/Library/Mobile Documents/com~apple~CloudDocs/ComfyUi Project/ModuSnap-Latest/ModuSnap-Core/apps/ModuSnap-Assets/webstudio-core"

echo "🚀 Starting Webstudio Core Build..."
cd "$WEBSTUDIO_DIR"

echo "📦 Building @webstudio-is/sdk..."
pnpm --filter @webstudio-is/sdk run build

echo "📦 Building @webstudio-is/react-sdk..."
pnpm --filter @webstudio-is/react-sdk run build

echo "📦 Building @webstudio-is/sdk-components-react..."
pnpm --filter @webstudio-is/sdk-components-react run build

echo "✅ Webstudio Core packages built successfully!"
