# Coding Hub

Learning platform with:
- Short lessons
- Timed quizzes (countdown, **no retry**)
- Scores count toward total marks
- Performance tracking
- AI code/answer review via free Google Gemini API
- Secret admin page

## Files
- `index.html` — full app
- `favicon.svg`, `icon-192.png`, `icon-512.png`
- `manifest.json`, `sw.js` — PWA
- `README.md`

## Quick start
1. Open `index.html` in a browser (or deploy the folder to Vercel/Netlify).
2. Sign up or continue as guest.
3. Complete a lesson → start the timed quiz → score is locked forever.

## AI (Google Gemini free)
1. Get a key: https://aistudio.google.com/apikey
2. In `index.html` find `GEMINI_API_KEY = ''` and paste your key.
3. Use the **AI Check** page.

## Secret admin
Go to: `yoursite.com/#/admin`  
Default password: `codinghub-admin-2026`  
Change `ADMIN_PASSWORD` in the code before going public.

## Deploy
Upload the whole folder to Vercel, Netlify or GitHub Pages (HTTPS required for PWA + AI).
