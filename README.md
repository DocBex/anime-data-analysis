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
