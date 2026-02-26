SELECT
  title,
  release_year,
  budget,
  revenue,
  profit,
  roi
FROM movie_project.movies_master
ORDER BY profit DESC
LIMIT 20;

