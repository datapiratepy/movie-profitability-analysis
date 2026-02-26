SELECT
  ROUND(budget/10000000)*10000000 AS budget_bucket,
  AVG(imdb_rating) AS avg_imdb_rating,
  COUNT(*) AS movie_count
FROM movie_project.movies_master
WHERE imdb_rating IS NOT NULL
GROUP BY budget_bucket
ORDER BY budget_bucket;
