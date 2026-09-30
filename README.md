# Coding Hub

Learning platform with lessons, timed quizzes, certificates, Code Lab, and Supabase auth.

## Features
- **Light / dark mode** — toggle on login and in the top bar (saved in browser)
- **Code Lab** — practical HTML/CSS/JS compiler + **personal project manager** (save, run, export)
- **18 lessons** (HTML, CSS, JS) with timed quizzes (no retry)
- **Certificate** of completion with student name (after all quizzes)
- **Supabase** email/password auth (name required for certificate)
- **Secret admin** — go to `#/admin` (password in code: `codinghub-admin-2026`)
- AI Check (optional Gemini key), PWA, download app ZIP from login

## Quick start
1. Deploy this folder over HTTPS (Vercel / Netlify / GitHub Pages).
2. Sign up with full name, or continue as guest.
3. Learn → quiz → unlock certificate. Use **Code Lab** for practice projects.

## Code Lab
- New / rename / delete personal projects (stored per user in localStorage)
- Edit HTML, CSS, JS → **Run** for live preview (sandboxed iframe)
- **Export HTML** downloads a single file

## Secret admin
URL: `yoursite.com/#/admin`  
Default password: `codinghub-admin-2026` — change `ADMIN_PASSWORD` in `index.html` before public launch.

## Supabase
Already configured. For instant login after sign-up, disable **Confirm email** under Authentication → Providers → Email.
