CREATE TABLE IF NOT EXISTS set_list_songs (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    set_list_id uuid NOT NULL REFERENCES set_lists(id) ON DELETE CASCADE,
    song_id uuid NOT NULL REFERENCES songs(id) ON DELETE CASCADE,
    order_index integer DEFAULT 0,
    key_override text,
    section text,
    note text,
    created_at timestamp with time zone DEFAULT NOW(),
    UNIQUE(set_list_id, song_id)
);