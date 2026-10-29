#!/bin/bash
# ======================================================================
# ⚡ DML COMPUTERS DOMAIN GATEWAY ACTIVATION SCRIPT
# ======================================================================
TARGET_DOMAIN="dmlcomputers.co.uk"
WORKSPACE_DIR="/home/lord_protector/dml_workspace"

echo "📂 Initializing network pipeline synchronization..."
cd "$WORKSPACE_DIR" || { echo "❌ Error: Workspace directory not found."; exit 1; }

echo "📝 Injecting tracking node asset..."
echo "$TARGET_DOMAIN" > CNAME

echo "🐙 Packaging asset arrays for GitHub server clusters..."
git add CNAME
git commit -m "Deploy production tracking matrix for custom domain: $TARGET_DOMAIN"

echo "🚀 Transmitting packet payload directly to live cloud server..."
git push origin main

echo "======================================================================"
echo "✨ DOMAIN DEPLOYMENT ENGINES COMPLETE!"
echo "👉 Your high-tech store will route to: https://$TARGET_DOMAIN"
echo "======================================================================"
