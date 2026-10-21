-- Esegui una volta in Supabase → SQL Editor.
-- Crea solo una tabella nuova (demo_piani_pasti): non tocca le altre tabelle del progetto.

create table if not exists public.demo_piani_pasti (
  id bigint generated always as identity primary key,
  created_at timestamptz not null default now(),
  obiettivo text not null,
  dieta text not null,
  piano jsonb not null
);

alter table public.demo_piani_pasti enable row level security;

-- Demo: chiunque abbia il link può leggere e aggiungere piani (non modificarli o cancellarli).
create policy "demo lettura" on public.demo_piani_pasti
  for select to anon using (true);

create policy "demo inserimento" on public.demo_piani_pasti
  for insert to anon with check (true);
