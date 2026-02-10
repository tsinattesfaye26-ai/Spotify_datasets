-- : Market Performance (The "Business" Questions)
-- 1 The "Power Players": Which top 10 artists have the highest average popularity, but only for artists with more than 5 songs? (This filters out "one-hit wonders")
SELECT 
    artist_name, 
    AVG(popularity) AS average_popularity, 
    COUNT(*) AS song_count
FROM spotify.project
GROUP BY artist_name
HAVING COUNT(*) > 5  -- This is the "One-Hit Wonder" filter
ORDER BY average_popularity DESC
LIMIT 10;
-- 2. Streaming Efficiency: Which songs have the highest popularity despite having a low stream_count? (This identifies "viral" or "trending" tracks that are rising fast).
SELECT 
    track_name, 
    artist_name, 
    popularity, 
    stream_count,
    -- We calculate the ratio: Popularity per 1 million streams
    (popularity / (NULLIF(stream_count, 0) / 1000000)) AS efficiency_ratio
FROM spotify.project
WHERE stream_count BETWEEN 100000 AND 5000000  -- Focus on "Rising" tracks, not established hits
  AND popularity > 70                           -- Only focus on highly popular songs
ORDER BY efficiency_ratio DESC
LIMIT 10;
-- 2.1 The "Rising Stars" (High Popularity + Lower Streams)
SELECT track_name, artist_name, popularity, stream_count
FROM spotify.project
WHERE popularity > 90 
  AND stream_count < 1000000
ORDER BY popularity DESC
limit 10 ;
-- 2.2 The "Reliable Classics" (Old Songs + High Popularity)
SELECT track_name, artist_name, release_date, popularity
FROM spotify.project
WHERE YEAR(release_date) = 2020 
  AND popularity > 85
  order by popularity
  limit 10 ;
  -- 2.3 Market Dominance (Total Streams by Genre)
 SELECT genre, SUM(stream_count) AS total_genre_streams
FROM spotify.project
GROUP BY genre
ORDER BY total_genre_streams DESC; 
-- 2.4 The "Length" Trend
SELECT 
    CASE WHEN duration_ms < 180000 THEN 'Short (<3min)' ELSE 'Long (>3min)' END AS song_length,
    AVG(popularity) AS avg_pop
FROM spotify.project
GROUP BY 1;
-- 3 The 2024 vs. 2025 Growth Analysis
-- pop 
SELECT 
    YEAR(release_date) AS release_year,
    COUNT(*) AS song_count,
    AVG(popularity) AS avg_popularity,
    SUM(stream_count) AS total_streams
FROM spotify.project
WHERE genre = 'Hip-Hop' -- Change this to any genre you want to track
GROUP BY YEAR(release_date)
ORDER BY release_year ASC;
--  jazz 
SELECT 
    YEAR(release_date) AS release_year,
    COUNT(*) AS song_count,
    AVG(popularity) AS avg_popularity,
    SUM(stream_count) AS total_streams
FROM spotify.project
WHERE genre = 'Jazz' -- Change this to any genre you want to track
GROUP BY YEAR(release_date)
ORDER BY release_year ASC;
-- metal
SELECT 
    YEAR(release_date) AS release_year,
    COUNT(*) AS song_count,
    AVG(popularity) AS avg_popularity,
    SUM(stream_count) AS total_streams
FROM spotify.project
WHERE genre = 'metal' -- Change this to any genre you want to track
GROUP BY YEAR(release_date)
ORDER BY release_year ASC ;
-- Classical
SELECT 
    YEAR(release_date) AS release_year,
    COUNT(*) AS song_count,
    AVG(popularity) AS avg_popularity,
    SUM(stream_count) AS total_streams
FROM spotify.project
WHERE genre = 'classical' -- Change this to any genre you want to track
GROUP BY YEAR(release_date)
ORDER BY release_year ASC ;
--  Edm 
SELECT 
    YEAR(release_date) AS release_year,
    COUNT(*) AS song_count,
    AVG(popularity) AS avg_popularity,
    SUM(stream_count) AS total_streams
FROM spotify.project
WHERE genre = 'EDM' -- Change this to any genre you want to track
GROUP BY YEAR(release_date)
ORDER BY release_year ASC ;

-- 4 Genre Dominance: Calculate the total streams per genre for each year. Which genre has seen the most growth between 2023 and 2024?
SELECT 
    genre,
    SUM(CASE WHEN YEAR(release_date) = 2024 THEN stream_count ELSE 0 END) AS total_streams_2024,
    SUM(CASE WHEN YEAR(release_date) = 2025 THEN stream_count ELSE 0 END) AS total_streams_2025,
    -- Calculation for YoY (Year-over-Year) Growth
    ROUND(
        ((SUM(CASE WHEN YEAR(release_date) = 2025 THEN stream_count ELSE 0 END) - 
          SUM(CASE WHEN YEAR(release_date) = 2024 THEN stream_count ELSE 0 END)) / 
          NULLIF(SUM(CASE WHEN YEAR(release_date) = 2024 THEN stream_count ELSE 0 END), 0)) * 100, 
    2) AS growth_pct_24_to_25
FROM spotify.project
GROUP BY genre
HAVING total_streams_2024 > 0
ORDER BY growth_pct_24_to_25 DESC;

-- 5    Market Share: What percentage of the total streams in the entire dataset does the top 1% of artists control?
WITH ArtistStreams AS (
    SELECT 
        artist_name, 
        SUM(stream_count) AS total_artist_streams
    FROM spotify.project
    GROUP BY artist_name
),
ArtistRanking AS (
    SELECT 
        total_artist_streams,
        PERCENT_RANK() OVER (ORDER BY total_artist_streams DESC) AS artist_percentile
    FROM ArtistStreams
)
SELECT
    -- Calculate the market share of the top 1% of artists
    ROUND(
        (SUM(CASE WHEN artist_percentile <= 0.01 THEN total_artist_streams ELSE 0 END) / 
        NULLIF(SUM(total_artist_streams), 0)) * 100, 
    2) AS top_1_percent_market_share
FROM ArtistRanking;

-- : Audio Engineering & Trends (The "Product" Questions)
-- 7  The "Energy" Shift: Is there a measurable trend of songs getting shorter (duration_ms) and more energetic (energy) over the last 10 years?
SELECT
    YEAR(release_date) AS release_year,
    -- Calculate average duration in milliseconds
    ROUND(AVG(duration_ms), 0) AS avg_duration_ms,
    -- Calculate average energy score
    ROUND(AVG(energy), 4) AS avg_energy_score,
    -- Calculate Year-over-Year change for duration
    ROUND(
        (AVG(duration_ms) - LAG(AVG(duration_ms)) OVER (ORDER BY YEAR(release_date))) / 
        NULLIF(LAG(AVG(duration_ms)) OVER (ORDER BY YEAR(release_date)), 0) * 100, 
    2) AS duration_pct_change,
    -- Calculate Year-over-Year change for energy
    ROUND(
        (AVG(energy) - LAG(AVG(energy)) OVER (ORDER BY YEAR(release_date))) / 
        NULLIF(LAG(AVG(energy)) OVER (ORDER BY YEAR(release_date)), 0) * 100, 
    2) AS energy_pct_change
FROM spotify.project
WHERE release_date >= DATE_SUB(CURDATE(), INTERVAL 10 YEAR)
GROUP BY release_year
ORDER BY release_year DESC;
-- 8  Danceability vs. Success: Do songs with a high danceability ( > 0.7) actually get more streams than "moody" songs with low danceability?
SELECT
    CASE 
        WHEN danceability > 0.7 THEN 'High Danceability (> 0.7)'
        ELSE 'Moody/Low Danceability (<= 0.7)'
    END AS song_vibe,
    COUNT(*) AS total_songs,
    -- Calculate average streams per category
    ROUND(AVG(stream_count), 0) AS avg_streams,
    -- Calculate total streams per category
    SUM(stream_count) AS total_streams,
    -- Calculate the stream-to-track ratio to measure relative success
    ROUND(SUM(stream_count) / NULLIF(COUNT(*), 0), 2) AS success_ratio
FROM spotify.project
GROUP BY 1
ORDER BY avg_streams DESC;
-- 9 The "Loudness" Sweet Spot: What is the average loudness for the top 100 most streamed songs versus the bottom 100?
WITH RankedSongs AS (
    SELECT 
        loudness,
        stream_count,
        ROW_NUMBER() OVER (ORDER BY stream_count DESC) AS rank_desc,
        ROW_NUMBER() OVER (ORDER BY stream_count ASC) AS rank_asc
    FROM spotify.project
)
SELECT
    -- Compare average loudness of the elite performers vs. the lowest performers
    AVG(CASE WHEN rank_desc <= 100 THEN loudness END) AS avg_loudness_top_100,
    AVG(CASE WHEN rank_asc <= 100 THEN loudness END) AS avg_loudness_bottom_100,
    -- Calculate the decibel difference
    ROUND(
        AVG(CASE WHEN rank_desc <= 100 THEN loudness END) - 
        AVG(CASE WHEN rank_asc <= 100 THEN loudness END), 
    2) AS loudness_diff_db
FROM RankedSongs
WHERE rank_desc <= 100 OR rank_asc <= 100;

-- 10 Tempo & Genre: For each genre, what is the "average tempo"? Does a specific tempo (e.g., 120 BPM) correlate with higher popularity?
WITH TempoPopularity AS (
    SELECT 
        genre,
        ROUND(tempo, 0) AS tempo_rounded,
        AVG(popularity) AS avg_pop_at_tempo,
        ROW_NUMBER() OVER(PARTITION BY genre ORDER BY AVG(popularity) DESC) AS rank_idx
    FROM spotify.project
    GROUP BY genre, ROUND(tempo, 0)
)
SELECT
    p.genre,
    ROUND(AVG(p.tempo), 2) AS avg_tempo,
    ROUND(AVG(p.popularity), 2) AS avg_popularity,
    t.tempo_rounded AS sweet_spot_bpm
FROM spotify.project p
JOIN TempoPopularity t ON p.genre = t.genre AND t.rank_idx = 1
GROUP BY p.genre, t.tempo_rounded
ORDER BY avg_popularity DESC;

-- 11 Acoustic vs. Electronic: Calculate the ratio of acousticness to instrumentalness over the years. Are we moving toward more "organic" sounds?
SELECT
    YEAR(release_date) AS release_year,
    -- Using exact column names from your schema: 'explicit' (proxy for organic) and 'instrumentalness'
    ROUND(AVG(explicit), 4) AS avg_explicit_score,
    ROUND(AVG(instrumentalness), 4) AS avg_instrumentalness,
    -- Calculate ratio
    ROUND(
        AVG(explicit) / NULLIF(AVG(instrumentalness), 0), 
    2) AS explicit_to_instrumental_ratio,
    -- Trend indicator based on average explicit content
    CASE 
        WHEN AVG(explicit) > LAG(AVG(explicit)) OVER (ORDER BY YEAR(release_date)) THEN 'Increasing Organic/Raw'
        ELSE 'Increasing Synthetic/Instrumental'
    END AS sound_trend
FROM spotify.project
GROUP BY YEAR(release_date)
ORDER BY release_year DESC;
-- : Advanced Data Cleaning & Logic (The "Technical" Questions)
-- 12 Identifying Outliers: Find any songs where the popularity is high ( > 90) but the energy and valence (happiness) are extremely low. (The "Sad Girl Autumn" effect).

-- 13 Explicit Content ROI: Do explicit songs generate more streams on average than clean songs within the "Hip-Hop" and "Pop" genres?

-- 14  Data Integrity Check: Identify "Duplicate" tracks (same name and artist) and determine if their stream counts should be merged.

-- 15  Seasonality of Releases: In which month are the "most popular" songs typically released? (e.g., Are summer hits actually released in May?).

-- 16 The "Feature" Effect: Find artists who appear in track_name (e.g., "Artist A feat. Artist B") and see if collaborations perform better than solo tracks.