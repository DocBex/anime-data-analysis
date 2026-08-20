# Anime Data Analysis 📊

## What are the key characteristics of top-ranked anime?

This project focuses on the presentation and analysis of various characteristics of anime. The "Anime Recommendations Database 2020" dataset from Kaggle was used as the data source, with the original data sourced from MyAnimeList (MAL).

After cleaning, the dataset contains approximately 14,000 records. The aim of this project is to use the available data to identify characteristics and relationships that characterize successful or top-ranked anime.

## Tools

- **Excel** – Data cleaning and initial exploration
- **BigQuery / SQL** – Data analysis
- **Tableau** – Data visualization and dashboard
- **ChatGPT** – Learning support, troubleshooting and review

## Dataset

The dataset was selected due to its extensive data basis and the wide range of relevant information it provides. Attributes such as rating, popularity, genre, studio, source, and type provide a strong foundation for examining the research question and deriving meaningful insights.

- **Dataset:** Anime Recommendations Database 2020
- **Original data source:** MyAnimeList (MAL)
- **Records after cleaning:** approximately 14,000

## Data Preparation & Cleaning

Before the analysis could begin, several data quality and import issues had to be addressed:

- Identified and resolved CSV formatting and column-count errors during data import
- Detected header and schema issues and created an appropriate schema for the dataset
- Defined the required data types for the individual fields
- Investigated BigQuery import errors to identify problems in the source data
- Identified that the CSV file was semicolon-separated rather than comma-separated
- Prepared the dataset for successful import and further analysis in BigQuery

## Analysis

### Research Question 1 – Which source material is most common among the Top 100 ranked anime?

The source material categories were first reviewed in Excel to determine whether similar categories should be combined. After reviewing the different source types, the original categories were retained.

The dataset was then filtered to include the 100 top-ranked anime, grouped by source material, and aggregated to determine how frequently each source occurs among the Top 100.

**Key Finding:**  
70% of the Top 100 ranked anime are adapted from manga, making manga by far the dominant source material. Original productions represent the second-largest category (11%), followed by light novels (9%).

➡️ [View SQL Query](sql/question_1.sql)

### Research Question 2 – Top 100 Anime: Distribution of Anime Types

The dataset was filtered to include the 100 top-ranked anime. The anime were then grouped by type, such as TV, Movie, OVA, ONA, Special, and Music, and the number of titles within each category was calculated to identify the most common anime types among the Top 100.

**Key Finding:**  
TV anime dominate the Top 100 ranking, accounting for 76% of all titles. Movies represent the second-largest category with 21 entries, while OVA, ONA, Specials, and Music videos appear only occasionally.

➡️ [View SQL Query](sql/question_2.sql)

### Research Question 3 – Which genres are most common among the Top 100 ranked anime?

The genre data had to be separated because one anime can be associated with multiple genres. In the original dataset, these genres were stored as comma-separated values within a single field.

To analyze each genre individually, the `SPLIT()` function was used to separate the values, while `UNNEST()` transformed them into individual rows. This made it possible to count the occurrence of each genre among the 100 top-ranked anime and identify the most common genres.

**Key Finding:**  
Comedy is the most frequently occurring genre among the Top 100 ranked anime, appearing in 47 titles. Drama (45) and Action (40) follow closely behind. The Top 100 contain a total of 468 genre assignments, averaging approximately 4.7 genres per anime.

➡️ [View SQL Query](sql/question_3.sql)

### Research Question 4 – Which studios have produced the most Top 100 ranked anime?

The studio data had to be separated because some anime were associated with more than one studio.

To analyze each studio individually, `SPLIT()` and `UNNEST()` were used to separate the values and transform them into individual rows. In addition, anime with missing studio information represented by `NULL` values were excluded using an `IS NOT NULL` condition.

The dataset was also filtered to include only the 100 top-ranked anime. These steps made it possible to count the occurrence of each studio and identify which studios were most frequently represented among the Top 100.

**Key Finding:**  
Madhouse is the most frequently represented studio among the Top 100 ranked anime, contributing to 13 titles. Sunrise ranks second with 9 titles, followed by Artland (7) and Production I.G (6).

➡️ [View SQL Query](sql/question_4.sql)

### Research Question 5 – Is there a relationship between anime ranking and the number of user ratings?

The relevant fields `anime_rank`, `title`, and `scored_by` were selected from the dataset.

The analysis was limited to the 100 top-ranked anime, while records with a rank of 0 or no user ratings (`scored_by = 0`) were excluded because they did not provide meaningful information for the analysis.

The remaining data was ordered by anime rank and used to examine the relationship between an anime's ranking and the number of user ratings it received.

**Key Finding:**  
The analysis shows that there is no strong relationship between anime ranking and the number of user ratings. Although many top-ranked anime have received a large number of ratings, several highly ranked titles have comparatively fewer user ratings, while some lower-ranked anime have significantly more. This suggests that the number of user ratings alone does not explain an anime's ranking.

➡️ [View SQL Query](sql/question_5.sql)

## Dashboard

The results of the five research questions were combined into a Tableau dashboard to provide a clear overview of the key findings of the analysis.

![Anime Data Analysis Dashboard](dashboard.png)
