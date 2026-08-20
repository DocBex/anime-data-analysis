SELECT
  type,
  COUNT(*) AS Total
FROM `anime-1666.Anime_1.Anime-Project-01`
WHERE anime_rank <= 100
GROUP BY type
ORDER BY Total DESC;
