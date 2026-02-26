SELECT
  TRIM(REPLACE(genre_raw, ']', '')) AS genre,
  AVG(profit) AS avg_profit,
  COUNT(*) AS movie_count
FROM (
  SELECT
    REPLACE(
      REPLACE(
        SPLIT(g, '"name": ')[SAFE_OFFSET(1)],
        '"', ''
      ),
      '}', ''
    ) AS genre_raw,
    profit
  FROM movie_project.movies_master,
  UNNEST(SPLIT(tmdb_genres, '},')) AS g
  WHERE tmdb_genres IS NOT NULL
)
GROUP BY genre
ORDER BY avg_profit DESC;
