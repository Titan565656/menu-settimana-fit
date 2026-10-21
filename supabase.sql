-- Esegui una volta in Supabase → SQL Editor.
-- Crea solo una tabella nuova (demo_piani_pasti): non tocca le altre tabelle del progetto.

create table if not exists public.demo_piani_pasti (
  id bigint generated always as identity primary key,
  created_at timestamptz not null default now(),
  obiettivo text not null check (obiettivo in ('dimagrire', 'mantenersi', 'muscolo')),
  dieta text not null check (dieta in ('onnivora', 'vegetariana')),
  piano jsonb not null check (jsonb_typeof(piano) = 'object' and pg_column_size(piano) < 20000)
);

alter table public.demo_piani_pasti enable row level security;

-- Demo: chiunque abbia il link può leggere e aggiungere piani (non modificarli o cancellarli).
create policy "demo lettura" on public.demo_piani_pasti
  for select to anon, authenticated using (true);

create policy "demo inserimento" on public.demo_piani_pasti
  for insert to anon, authenticated with check (true);
