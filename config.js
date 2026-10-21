// Collegamento a Supabase (facoltativo).
// Supabase → Project Settings → API: copia "Project URL" e la chiave "anon" / "publishable".
// Usa SOLO la chiave pubblica (anon/publishable), MAI la "service_role" o "secret":
// questo file finisce su GitHub ed è visibile a tutti.
window.SUPABASE_CONFIG = {
  url: "",      // es. "https://abcdefgh.supabase.co"
  anonKey: "",  // es. "eyJhbGciOi..." oppure "sb_publishable_..."
};
