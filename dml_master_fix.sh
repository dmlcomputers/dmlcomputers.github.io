#!/bin/bash
echo "⚡ EXECUTING DML COMPUTERS MASTER RESYNC CRON..."
cd /home/lord_protector/dml_workspace || exit
rm -f CNAME
git remote set-url origin https://github.com
git add --all
git commit -m "System Refactor: Purging domain nodes to force fallback build"
git push origin main --force
echo "🚀 TRANSmisSION COMPLETE. Pipeline cleared."
