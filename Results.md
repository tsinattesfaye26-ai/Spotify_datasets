<img width="289" height="261" alt="image" src="https://github.com/user-attachments/assets/f76898cb-3e46-4b01-bca1-0d5412f8e80c" /># : Market Performance (The "Business" Questions)
### 1 The "Power Players": Which top 10 artists have the highest average popularity, but only for artists with more than 5 songs? (This filters out "one-hit wonders")
artist_name|	average_popularity |	song_count
|-----------|--------------------|----------|
Stephanie Lee |	70.6667 |	6
Amanda Henry	| 65.6667	|6
Steven Miller |	64.625	|8
Jennifer Jackson	|63.4444	|9
Justin Miller	| 62.875	|8
Steven Jackson	|62.8571	|7
Michael Lee|	62.4444	| 9
Emily Wilson	|62.3333|	6
Jacob Smith	| 61.5	|6
Mary Russell	| 61.1429	| 7


### 2 Streaming Efficiency: Which songs have the highest popularity despite having a low stream_count? (This identifies "viral" or "trending" tracks that are rising fast)

track_name	artist_name |	popularity	stream_count |	efficiency_ratio |
|----------------------|--------------------------|-----------------|
Offer bill	Elaine Donovan	| 100	103000	| 970.8738
Them language power	Curtis Salazar	| 90	100000	| 900
Theory	Brandi Perkins|	98	110000	| 890.9091
Amount chance	Aaron Larson	| 89	101000	| 881.1881
Itself hundred	April Garcia	| 89	103000	| 864.0777
Choose gun year policy	Amanda Holmes	| 89	103000	| 864.0777
Reveal close news suggest write	Natasha Leon	| 100	116000	| 862.069
So sometimes soon morning far	Kimberly Kelley	|91	107000	| 850.4673
Key stage knowledge successful	William Valenzuela	| 85	100000	| 850
Like machine cost	Carlos Walters Jr.	| 87	103000	| 844.6602

### 2.1  The "Rising Stars" (High Popularity + Lower Streams)

track_name	artist_name |	popularity	| stream_count
|----------------------|------------|--------------|
Offer bill	Elaine Donovan	| 100	| 103000
Certainly in such	Patricia Le	| 100| 503000
Admit paper	Tracy Shelton|	100	|574000
Daughter speak	Gregory Reyes|	100	|980000
Should war	Laura Obrien	|100	|619000
Tree notice growth industry three	Christina Munoz	|100	|283000
Land discuss	Henry Jimenez	|100	|94000
Approach tonight	Greg Thompson	|100	|920000
During Mr	Francis King	|100	|600000
Common carry	Anna Campbell	|100	 |934000


### 2.2 The "Reliable Classics" (Old Songs + High Popularity)

track_name	artist_name |	release_date	|popularity
|----------------------|--------------|---------|
Build for	Samantha Snow |	6/30/2020	| 86
Car	Miranda Wilson |	10/25/2020	| 86
Drug next	Joseph Jimenez|	4/30/2020|	86
Either everyone lot various	Joseph Sawyer	| 8/2/2020	|86
Technology north meeting bed	John Brady |	1/22/2020	|86
Bar answer great	Angela Nash	|7/30/2020	|86
Their imagine	Lucas Williams |	2/23/2020	|86
Medical Republican	Lindsay Gomez	|8/17/2020	|86
Chair quite	Daniel Mckay	| 2/5/2020	| 86
Consider Democrat third peace	Stacy Lopez	|8/8/2020	|86

genre	| total_genre_streams
|------|------------------|
Hip-Hop	| 1906762000
R&B	| 1625619000
Metal	| 1604998000
Classical| 	1558461000
Folk	| 1539041000
Pop	| 1538151000
EDM	| 1533096000
Rock	| 1452055000
Jazz	| 1447452000
Country |	1440493000
Reggaeton	| 1316019000
Indie	| 1258001000
**insight** 
- Hip-Hop has the highest total streams (~1.9B)
- R&B, Metal, Classical, Folk, Pop, and EDM are very close in total streams
- Classical ranks high despite being traditionally niche
- Rock, Jazz, and Country show slightly lower totals

### 3 Genre Dominance: Calculate the total streams per genre for each year. Which genre has seen the most growth between 2023 and 2024?
| Genre     | Total Streams 2024 | Total Streams 2025 | Growth % (24→25) |
|-----------|--------------------|--------------------|------------------|
| Folk      | 75438000           | 184282000          | 144.28           |
| Indie     | 74828000           | 158806000          | 112.23           |
| Hip-Hop   | 204753000          | 241774000          | 18.08            |
| EDM       | 127463000          | 147396000          | 15.64            |
| Classical | 160740000          | 169167000          | 5.24             |
| Country   | 173657000          | 174842000          | 0.68             |
| Rock      | 120781000          | 119015000          | -1.46            |
| Reggaeton | 142554000          | 117128000          | -17.84           |
| Metal     | 197147000          | 136808000          | -30.61           |
| R&B       | 151931000          | 100050000          | -34.15           |
| Pop       | 147817000          | 87953000           | -40.5            |
| Jazz      | 144704000          | 56546000           | -60.92           |

**insight** 
- Folk (+144%) and Indie (+112%) show massive growth
- Hip-Hop still grows (+18%) despite already high streaming numbers
- EDM (+15%) and Classical (+5%) show steady positive growth
- Country (+0.68%) shows almost no change
- Pop (-40%), R&B (-34%), Metal (-30%), Jazz (-60%) show sharp drops

### 4 The "Longevity" Test: Identify songs that were released over 5 years ago but still maintain a popularity score above 80

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
