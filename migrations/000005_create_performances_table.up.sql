CREATE TABLE IF NOT EXISTS performances (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    song_id uuid NOT NULL REFERENCES songs(id) ON DELETE CASCADE,
    set_list_id uuid NOT NULL REFERENCES set_lists(id) ON DELETE SET NULL,
    lead_id uuid REFERENCES leads(id) ON DELETE SET NULL,
    key_played text,
    date_played date,
    event text,
    note text,
    created_at timestamp with time zone DEFAULT NOW()
);