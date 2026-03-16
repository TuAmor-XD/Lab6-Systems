CREATE TABLE IF NOT EXISTS songs (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    title text NOT NULL,
    artist text,
    style text, 
    key text,
    bpm int,
    chord_sheet text,
    yt_link text,
    color text,
    note text,
    created_at timestamp with time zone DEFAULT NOW()
);