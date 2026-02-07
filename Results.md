# : Market Performance (The "Business" Questions)
### 1 The "Power Players": Which top 10 artists have the highest average popularity, but only for artists with more than 5 songs? (This filters out "one-hit wonders").
### 2 Streaming Efficiency: Which songs have the highest popularity despite having a low stream_count? (This identifies "viral" or "trending" tracks that are rising fast).
### 3 Genre Dominance: Calculate the total streams per genre for each year. Which genre has seen the most growth between 2023 and 2024?
### 4 The "Longevity" Test: Identify songs that were released over 5 years ago but still maintain a popularity score above 80.
### 5 Market Share: What percentage of the total streams in the entire dataset does the top 1% of artists control?
 # : Audio Engineering & Trends (The "Product" Questions)
### 6 The "Energy" Shift: Is there a measurable trend of songs getting shorter (duration_ms) and more energetic (energy) over the last 10 years?
### 7 Danceability vs. Success: Do songs with a high danceability ( > 0.7) actually get more streams than "moody" songs with low danceability?
### 8 The "Loudness" Sweet Spot: What is the average loudness for the top 100 most streamed songs versus the bottom 100?
### 9 Tempo & Genre: For each genre, what is the "average tempo"? Does a specific tempo (e.g., 120 BPM) correlate with higher popularity?
### 10 Acoustic vs. Electronic: Calculate the ratio of acousticness to instrumentalness over the years. Are we moving toward more "organic" sounds?
# : Advanced Data Cleaning & Logic (The "Technical" Questions)
### 11 Identifying Outliers: Find any songs where the popularity is high ( > 90) but the energy and valence (happiness) are extremely low. (The "Sad Girl Autumn" effect).
### 12 Explicit Content ROI: Do explicit songs generate more streams on average than clean songs within the "Hip-Hop" and "Pop" genres?
### 13  Data Integrity Check: Identify "Duplicate" tracks (same name and artist) and determine if their stream counts should be merged.
### 14 Seasonality of Releases: In which month are the "most popular" songs typically released? (e.g., Are summer hits actually released in May?).
### 15 The "Feature" Effect: Find artists who appear in track_name (e.g., "Artist A feat. Artist B") and see if collaborations perform better than solo tracks.
