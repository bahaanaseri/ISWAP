#!/bin/sh
# Builds the standalone GitHub Pages copy from index.html (the artifact source).
cd "$(dirname "$0")"
{
printf '%s\n' '<!doctype html>' '<html lang="ar" dir="rtl">' '<head>' '<meta charset="utf-8">' \
 '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">' \
 '<meta name="theme-color" content="#12141A">' '<meta name="apple-mobile-web-app-capable" content="yes">' \
 '<meta name="apple-mobile-web-app-title" content="iSwap">' '<link rel="manifest" href="manifest.webmanifest">' \
 '<link rel="icon" href="icon-192.png">' '<link rel="apple-touch-icon" href="icon-180.png">' \
 '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}html,body{margin:0}img{max-width:100%}[hidden]{display:none!important}</style>' \
 '</head>' '<body>'
cat app.html
printf '%s\n' '</body>' '</html>'
} > ../index.html
cp icon-180.png icon-192.png icon-512.png ../
cat > ../manifest.webmanifest <<'M'
{"name":"iSwap","short_name":"iSwap","description":"انسخ أي شيء من صورة والصقه في أخرى","lang":"ar","dir":"rtl","start_url":"./","display":"standalone","background_color":"#12141A","theme_color":"#12141A","icons":[{"src":"icon-192.png","sizes":"192x192","type":"image/png"},{"src":"icon-512.png","sizes":"512x512","type":"image/png"}]}
M
