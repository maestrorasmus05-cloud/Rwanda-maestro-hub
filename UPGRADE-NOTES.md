# Coding Hub v11

Implemented:
- Mini Profile modal for learner full name + optional Student ID.
- Saved profile name is used automatically on certificates and leaderboard.
- Certificate source template cleaned: previous CEO name/title removed.
- Certificate adds a subtle faded learner-name watermark.
- Certificate completion countdown remains visible while quizzes are incomplete.
- AI navigation/tab and AI Check page removed.
- Real shared live leaderboard added through Supabase table `coding_hub_leaderboard`.
- Quiz submissions sync the learner's aggregate score to the leaderboard.
- Leaderboard refreshes every 5 seconds while open.
- PWA cache version bumped to v11 to force updated files.

## Enable live leaderboard
Run `leaderboard.sql` in Supabase SQL Editor. Users must be authenticated for shared leaderboard rows.
