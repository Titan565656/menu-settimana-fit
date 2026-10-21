# Menu della settimana (demo)

Piccola app statica che genera 7 giorni di pasti (colazione, pranzo, spuntino, cena) in base all'obiettivo (dimagrire, mantenersi, mettere muscolo) e all'alimentazione (onnivora o vegetariana).

- `index.html`: tutta l'app, nessuna installazione.
- `config.js`: URL e chiave pubblica di Supabase (vuoti = funziona senza database).
- `supabase.sql`: crea la tabella `demo_piani_pasti` per salvare i piani.

## Collegare Supabase

1. In Supabase apri **SQL Editor** e incolla il contenuto di `supabase.sql`, poi **Run**.
2. In **Project Settings → API** copia *Project URL* e la chiave *anon* (o *publishable*) dentro `config.js`.
3. Fai commit e push: il sito si aggiorna da solo.
