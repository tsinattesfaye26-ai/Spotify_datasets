# : Market Performance (The "Business" Questions)
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

### 3 Genre Dominance: Calculate the total streams per genre for each year. Which genre has seen the most growth between 2024 and 2025?
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
### 3.1 pop 
| Release Year | Song Count | Avg Popularity | Total Streams |
|--------------|------------|----------------|---------------|
| 2015         | 690        | 48.4899        | 183673000     |
| 2016         | 619        | 48.6511        | 148643000     |
| 2017         | 670        | 47.491         | 134617000     |
| 2018         | 657        | 48.2542        | 109041000     |
| 2019         | 664        | 47.5964        | 100254000     |
| 2020         | 603        | 49.4295        | 170468000     |
| 2021         | 652        | 48.1595        | 130942000     |
| 2022         | 635        | 49.3402        | 188724000     |
| 2023         | 649        | 47.641         | 136019000     |
| 2024         | 649        | 49.0693        | 147817000     |
| 2025         | 608        | 48.0461        | 87953000      |
**insight** 
- 2022 has the highest total streams (~188M)
- 2015 and 2020 also show strong performance
- Average popularity stays relatively stable (~47–49)
- Years with high song counts do not always produce higher streams
### 3.2 Hip hop 
| Release Year | Song Count | Avg Popularity | Total Streams |
|--------------|------------|----------------|---------------|
| 2015         | 640        | 48.6359        | 157859000     |
| 2016         | 668        | 48.3009        | 199806000     |
| 2017         | 659        | 48.3885        | 161789000     |
| 2018         | 638        | 48.732         | 176552000     |
| 2019         | 651        | 47.3871        | 150101000     |
| 2020         | 666        | 48.1697        | 182980000     |
| 2021         | 645        | 49.414         | 139905000     |
| 2022         | 640        | 47.9813        | 104681000     |
| 2023         | 649        | 48.2404        | 186562000     |
| 2024         | 640        | 48.9453        | 204753000     |
| 2025         | 664        | 47.7786        | 241774000     |
**insight** 
- Streaming reaches peak levels in 2025 (241M)
- Lowest total streams (~104M)
- Average popularity stays around 47–49 across all years
  
 # : Audio Engineering & Trends (The "Product" Questions)
### 4 The "Loudness" Sweet Spot: What is the average loudness for the top 100 most streamed songs versus the bottom 100?

| Release Year | Avg Duration (ms) | Avg Energy Score | Duration % Change | Energy % Change |
|--------------|-------------------|------------------|-------------------|-----------------|
| 2025         | 253623            | 0.5062           | 0.51              | 0.6             |
| 2024         | 252325            | 0.5032           | -0.83             | -0.59           |
| 2023         | 254426            | 0.5062           | -0.07             | -0.5            |
| 2022         | 254615            | 0.5087           | -0.47             | 0.77            |
| 2021         | 255812            | 0.5048           | 0.03              | 0.5             |
| 2020         | 255724            | 0.5023           | 0.51              | -0.46           |
| 2019         | 254432            | 0.5046           | -0.83             | -0.28           |
| 2018         | 256549            | 0.506            | -0.06             | 0.42            |
| 2017         | 256694            | 0.5039           | 0.6               | 0.17            |
| 2016         | 255169            | 0.5031           | NULL              | NULL            |


**insight** 
- Average duration trends downward from ~256k ms (2017–2018) to ~253k ms (2025)
- Avg energy score stays around 0.50–0.51 across all years
- Duration % change stays within ±1%
- Highest energy score (0.5087)
### 5 Tempo & Genre: For each genre, what is the "average tempo"? Does a specific tempo (e.g., 120 BPM) correlate with higher popularity?
avg_loudness_top_100 |	avg_loudness_bottom_100	| loudness_diff_db |
|--------------------|-------------------------|-------------------|
-28.5788	| -27.1994 |	-1.38

### 6  Acoustic vs. Electronic: Calculate the ratio of acousticness to instrumentalness over the years. Are we moving toward more "organic" sounds?
| Genre     | Avg Tempo | Avg Popularity | Sweet Spot BPM |
|-----------|-----------|----------------|----------------|
| Pop       | 130.76    | 48.37          | 160            |
| Classical | 129.34    | 48.36          | 88             |
| Hip-Hop   | 130.27    | 48.36          | 157            |
| R&B       | 130.25    | 48.36          | 121            |
| EDM       | 129.17    | 48.2           | 121            |
| Metal     | 129.63    | 48.19          | 146            |
| Country   | 130.74    | 48.17          | 200            |
| Indie     | 130.09    | 48.12          | 191            |
| Folk      | 130.15    | 48.1           | 155            |
| Rock      | 129.52    | 47.97          | 108            |
| Reggaeton | 130.05    | 47.88          | 116            |
| Jazz      | 129.42    | 47.85          | 72             |
**insight** 
- Average tempo is highly clustered around ~129–131 BPM
- Avg popularity scores are very close (~47.8–48.3)
- Despite similar average tempo, optimal BPM differs by genre

# : Advanced Data Cleaning & Logic (The "Technical" Questions)
### 7 Identifying Outliers: Find any songs where the popularity is high ( > 90) but the energy and valence (happiness) are extremely low. (The "Sad Girl Autumn" effect)
| Release Year | Avg Explicit Score | Avg Instrumentalness | Explicit-to-Instrumental Ratio | Sound Trend                     |
|--------------|--------------------|----------------------|--------------------------------|----------------------------------|
| 2025         | 0.1988             | 0.3964               | 0.5                            | Increasing Synthetic/Instrumental |
| 2024         | 0.2028             | 0.4012               | 0.51                           | Increasing Organic/Raw           |
| 2023         | 0.1905             | 0.401                | 0.48                           | Increasing Synthetic/Instrumental |
| 2022         | 0.2038             | 0.3998               | 0.51                           | Increasing Synthetic/Instrumental |
| 2021         | 0.2073             | 0.401                | 0.52                           | Increasing Organic/Raw           |
| 2020         | 0.2014             | 0.4054               | 0.5                            | Increasing Organic/Raw           |
| 2019         | 0.1997             | 0.3982               | 0.5                            | Increasing Synthetic/Instrumental |
| 2018         | 0.2001             | 0.398                | 0.5                            | Increasing Synthetic/Instrumental |
| 2017         | 0.206              | 0.4021               | 0.51                           | Increasing Organic/Raw           |
| 2016         | 0.2011             | 0.3983               | 0.5                            | Increasing Synthetic/Instrumental |
| 2015         | 0.2034             | 0.3963               | 0.51                           | Increasing Synthetic/Instrumental |
**insight** 
- Avg explicit score remains around 0.19–0.21 across all years
- Avg instrumentalness (~0.39–0.40) is almost double explicit score
- Ratio stays close to 0.5, showing stable balance between vocal-heavy and instrumental sound profiles.
