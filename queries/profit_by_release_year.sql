SELECT
  release_year,
  SUM(profit) AS total_profit,
  COUNT(*) AS movie_count
FROM movie_project.movies_master
GROUP BY release_year
ORDER BY total_profit DESC;
