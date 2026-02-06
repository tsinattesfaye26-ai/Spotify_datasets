# 🎵 Spotify Data Analysis: The "Hit" Formula
Project Goal: Decoding the musical "DNA" of popular tracks using SQL to identify what makes a song go viral 
# 📌 Project Overview
In a world dominated by streaming algorithms, why do some songs become global hits while others fade away? This project uses SQL to analyze a dataset of over 66,000 + Spotify tracks. We move beyond just listening to music—we treat music as data, analyzing features like Danceability, Energy, and Valence to find patterns in listener behavior
## Identify Your Columns
Track Metadata: track_name, artist_name, album_name, track_id
Performance Metrics: popularity (0-100), duration_ms (length in milliseconds)
Audio Features: danceability, energy, loudness, speechiness, acousticness, instrumentalness, liveness, valence, tempo (BPM)
# 🛠️ Tech Stack & Skills
Language: SQL ( MySQL )
Key Concepts: Window Functions (ROW_NUMBER), CTEs, Aggregations, Data Cleaning, Feature Engineering
Tools:  MySQL  / Workbench /

# 🧹 Data Cleaning (The "Gold Standard" Process)
Before analysis, I performed extensive data hygiene to ensure 100% accuracy:
Deduplication: Used ROW_NUMBER() and PARTITION BY to remove duplicate track entries across different albums
Unit Normalization: Converted duration_ms to duration_min for human-readable reporting
Handling Nulls: Replaced missing genre and artist_name tags with "Unknown" to prevent chart gaps
Feature Validation: Filtered out corrupted rows where audio scores (0.0 to 1.0) were out of bounds
