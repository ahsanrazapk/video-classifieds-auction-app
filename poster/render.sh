#!/bin/zsh
# Re-render ../poster.png from index.html (macOS, needs Google Chrome).
cd "${0:A:h}"
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless=new --disable-gpu --hide-scrollbars \
  --force-device-scale-factor=1 --window-size=1600,1200 --virtual-time-budget=10000 --allow-file-access-from-files \
  --screenshot=../poster.png "file://$PWD/index.html"
