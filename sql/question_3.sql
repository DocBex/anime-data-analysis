SELECT
  individual_genre,
  COUNT(*) AS Total
FROM `anime-1666.Anime_1.Anime-Project-01`,
UNNEST(SPLIT(genre, ', ')) AS individual_genre
WHERE anime_rank <= 100
GROUP BY individual_genre
ORDER BY Total DESC;
