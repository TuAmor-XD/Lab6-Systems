CREATE TABLE IF NOT EXISTS set_lists (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    name text NOT NULL,
    event_type text,
    date date,
    notes text,
    created_by uuid REFERENCES leads(id) ON DELETE SET NULL,
    created_at timestamp with time zone DEFAULT NOW()    
);