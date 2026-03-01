#!/bin/bash
set -e

# Script to start the Webstudio Designer (Builder)
# This will launch the Remix-based editor on its own port.

WEBSTUDIO_DIR="/Users/mtheunexpected/Library/Mobile Documents/com~apple~CloudDocs/ComfyUi Project/ModuSnap-Latest/ModuSnap-Core/apps/ModuSnap-Assets/webstudio-core"

echo "🚀 Starting Webstudio Designer..."
cd "$WEBSTUDIO_DIR/apps/builder"

# We run in dev mode for live editing of components
pnpm run dev
