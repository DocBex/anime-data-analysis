SELECT
  anime_rank,
  title,
  scored_by
FROM `anime-1666.Anime_1.Anime-Project-01`
WHERE anime_rank > 0
  AND anime_rank <= 100
  AND scored_by > 0
ORDER BY anime_rank;
