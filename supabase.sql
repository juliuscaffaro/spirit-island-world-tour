-- Rode isto no Supabase: SQL Editor → New query → cole → Run.
create table if not exists public.progress (
  user_id    uuid primary key default auth.uid() references auth.users on delete cascade,
  data       jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.progress enable row level security;

-- Cada usuário só lê e escreve a própria linha.
create policy "ler o proprio progresso"      on public.progress for select using (auth.uid() = user_id);
create policy "criar o proprio progresso"    on public.progress for insert with check (auth.uid() = user_id);
create policy "atualizar o proprio progresso" on public.progress for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
