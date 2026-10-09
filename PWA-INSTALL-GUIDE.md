# Coding Hub — PWA Install Guide

This package keeps the existing Coding Hub website and adds/updates only its
Progressive Web App installation layer.

## Included
- `manifest.json` — app identity, theme, scope, icons
- `sw.js` — safe app-shell/static-asset caching
- `icon-192.png` — install icon
- `icon-512.png` — install icon
- `favicon.svg` — browser favicon
- `index.html` — existing website with PWA metadata, service-worker registration,
  and the existing Install App controls

## Important
The service worker deliberately does NOT cache arbitrary API/authentication
responses or private user data.

## Deploy
Upload the entire `Rwanda-maestro-hub-main` folder to an HTTPS host such as:
- GitHub Pages
- Netlify
- Vercel
- Cloudflare Pages

Do not open the site using `file://` when testing installation.

## Test
1. Deploy the site over HTTPS.
2. Open it in Chrome/Edge on Android or desktop.
3. Reload the page once.
4. Use the existing `Install App` button or the browser's install icon/menu.
5. Accept the native installation prompt.
6. Open Coding Hub from the device app launcher.

### iPhone/iPad
Safari does not expose the same `beforeinstallprompt` API. Use:
Share → Add to Home Screen.

## Updating the app
When the website changes, increment the `CACHE_NAME` in `sw.js` so old
static caches are replaced.
