# Coding Hub — complete package

Everything requested in one app.

## Included features

1. **Log in / Sign up** (Supabase) + **Continue as guest**
2. **Full name required** on sign-up (and guest prompt) — used on the certificate
3. **12 lessons** = all 12 sections of *Responsive Web Design — Complete Course* (PDF) in full (text, code, tables, tips), each with a 3-question timed quiz
4. **Timed quizzes** — countdown, **no retries**, scores locked
5. **My Performance** — marks and progress
6. **Certificate of Completion** — your template + student name after all 12 quizzes
7. **Light / dark mode** — toggle on login and in the top bar
8. **Code Lab** — HTML/CSS/JS live preview + **personal project manager** (save / run / export)
9. **Secret admin** — go to `#/admin` · password `codinghub-admin-2026`
10. **Download Coding Hub app** button on the login screen — builds `coding-hub-app.zip` in the browser (no internet, CDN or server needed; works from file:// too)
11. **AI Check** — optional Gemini key in `index.html`
12. **PWA** — manifest + service worker

## Latest revision
- Lessons now follow the PDF section-by-section and include its full content.
- The Download button creates the ZIP itself (own ZIP writer, assets embedded) instead of depending on a CDN library and fetch().

## Content revision
- Old HTML/CSS/JS lessons removed; lessons now follow the PDF's sections (viewport, units, Flexbox, Grid, media queries, fluid type/images, container queries, components, frameworks, testing/a11y/performance, advanced + capstones).
- The certificate template image says "HTML, CSS & JavaScript courses"; the app repaints that single line to "Responsive Web Design course" when rendering/downloading. The original file is unchanged.
- Progress saved against the old lessons no longer applies (new lesson IDs).

## Earlier changes
- Guest login now asks for a full name inline (required, min 2 chars) instead of `prompt()`
- Added the missing light/dark toggle to the login card
- Quiz clock starts permanently on open: refresh/leave can no longer reset it (no retries)
- Certificate loads from an embedded copy of the template when opened from `file://`; name placement fixed
- Code Lab preview iframe no longer has `allow-same-origin` (user code can't read the app's storage)
- Service worker cache bumped to v3
- CSS lesson 12 "Responsive Design" rewritten from *Responsive Web Design — Complete Course* (viewport, units, mobile-first, Flexbox/Grid, fluid type, responsive images, container queries, components, frameworks, testing/a11y/performance) with a new 3-question, 70s quiz

## Known limits (be aware)
- Scores, progress and the "lock" live in browser localStorage: clearing site data or editing it in DevTools resets them. True tamper-proof locking needs a server (e.g. a Supabase table with row-level security).
- The admin password is in client-side code, so it is a convenience gate, not real security.
- Supabase handles sign-up/login only; progress is not synced across devices.

## Supabase
- URL: https://gukzoovzpwmlpdseinkj.supabase.co
- Anon key is in `index.html` (loaded only when you use email login/signup)
- Guest mode works offline without Supabase

## How to open
1. Unzip this folder
2. Open `index.html` in a browser (or deploy the folder on HTTPS)
3. **Continue as guest** or Sign up with full name
4. Learn → take quizzes → unlock certificate at `#/certificate`
5. Admin: `#/admin` password `codinghub-admin-2026`

## Change admin password
In `index.html` search for `ADMIN_PASSWORD` and change it before public use.

## CEO on certificate
Jabiro Kubwimana Chris (as on the certificate template image)
