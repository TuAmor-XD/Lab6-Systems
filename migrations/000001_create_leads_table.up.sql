CREATE TABLE IF NOT EXISTS leads (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    name text NOT NULL, 
    role text DEFAULT 'Lead',
    color text DEFAULT '#159ad7',
    created_at timestamp with time zone DEFAULT NOW()
);