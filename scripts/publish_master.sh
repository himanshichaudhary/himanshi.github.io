#!/bin/bash
set -euo pipefail

# Build web
flutter pub get
flutter build web --release

# Remember current branch
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

# Publish to master root
git checkout master
# Remove everything except .git
git rm -rf .
cp -R build/web/. .
# Ensure GitHub Pages doesn't run Jekyll
touch .nojekyll

# Disable service worker to avoid stale cache on user site
rm -f flutter_service_worker.js || true
# Neutralize manual service worker registration if present in index.html
if command -v sed >/dev/null 2>&1; then
  sed -i.bak "s/navigator.serviceWorker/false \/\/* sw disabled *\/ && navigator.serviceWorker/g" index.html || true
  rm -f index.html.bak || true
fi

git add -A
commit_msg="chore(pages): publish Flutter web build to root (user site)"
if git diff --cached --quiet; then
  echo "No changes to commit."
else
  git commit -m "$commit_msg"
  git push
fi

# Switch back
git checkout "$CURRENT_BRANCH"

echo "Published to master. Visit: https://himanshichaudhary.github.io/"
