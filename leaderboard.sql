-- Coding Hub real live leaderboard
create table if not exists public.coding_hub_leaderboard (
  user_id uuid primary key references auth.users(id) on delete cascade,
  name text not null,
  score integer not null default 0,
  total integer not null default 0,
  percentage numeric(6,2) not null default 0,
  updated_at timestamptz not null default now()
);

alter table public.coding_hub_leaderboard enable row level security;

drop policy if exists "leaderboard read authenticated" on public.coding_hub_leaderboard;
create policy "leaderboard read authenticated" on public.coding_hub_leaderboard for select to authenticated using (true);

drop policy if exists "leaderboard insert own" on public.coding_hub_leaderboard;
create policy "leaderboard insert own" on public.coding_hub_leaderboard for insert to authenticated with check (auth.uid() = user_id);

drop policy if exists "leaderboard update own" on public.coding_hub_leaderboard;
create policy "leaderboard update own" on public.coding_hub_leaderboard for update to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);

create index if not exists coding_hub_leaderboard_percentage_idx on public.coding_hub_leaderboard (percentage desc, score desc);
