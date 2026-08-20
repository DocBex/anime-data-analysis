SELECT
    individual_studio,
    COUNT(*) AS Total
FROM `anime-1666.Anime_1.Anime-Project-01`,
UNNEST(SPLIT(studio, ', ')) AS individual_studio
WHERE anime_rank <= 100
AND studio IS NOT NULL
GROUP BY individual_studio
ORDER BY Total DESC;
