# DIY Rwanda Coding Hub — Installable App

Practical coding training + assessment platform (HTML Web Design session and roadmap).

## Files
- `index.html` — Learning dashboard (Coursue-style UI)
- `manifest.json` — PWA name, icons, theme
- `sw.js` — Service worker for offline app shell
- `favicon.svg` — Site icon
- `icon-192.png` / `icon-512.png` — PWA icons

## Deploy
Upload all files together to the same folder on **Vercel**, Netlify, or GitHub Pages (must be HTTPS).

```bash
# Example with Vercel CLI
npx vercel
```

Or push to GitHub → Import project on vercel.com.

## Install (PWA)
On a supported browser the site can be installed:
- Android / Chrome / Edge: Install button or browser menu
- iPhone / iPad: Share → Add to Home Screen
- Desktop: browser Install / Add to Home Screen

## Connect backends
1. **Supabase** — paste Project URL + anon key in `index.html` (search for `SUPABASE_URL`)
2. **Stripe** — create a Payment Link for 5,000 RWF and paste into `STRIPE_PAYMENT_LINK`
3. Create the `enrollments` table (see comments in the HTML or previous README)

## Important
Supabase and Stripe requests stay live and are **not** cached by the service worker.
