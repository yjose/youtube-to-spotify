#!/bin/sh -l

echo ::group::Signing in to yt-dlp YouTube using cookies
mkdir -p ~/.cache/yt-dlp/youtube
echo "$COOKIES_FILE" | base64 -d > ~/.cache/yt-dlp/youtube/cookies.txt
mkdir -p ~/.config/yt-dlp
echo "--cookies ~/.cache/yt-dlp/youtube/cookies.txt" >> ~/.config/yt-dlp/config
echo "Config file content:"
cat ~/.config/yt-dlp/config
echo ::endgroup::


npx puppeteer browsers install chrome
npm start --prefix /
