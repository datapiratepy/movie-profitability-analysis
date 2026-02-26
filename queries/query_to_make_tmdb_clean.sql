CREATE OR REPLACE TABLE movie_project.tmdb_clean AS
SELECT
  id AS movie_id,
  title,
  SAFE_CAST(EXTRACT(YEAR FROM DATE(release_date)) AS INT64) AS release_year,
  budget,
  revenue,
  (revenue - budget) AS profit,
  SAFE_DIVIDE((revenue - budget), budget) AS roi,
  vote_average AS tmdb_rating,
  vote_count,
  popularity,
  original_language,
  genres
FROM movie_project.tmdb_movies
WHERE budget > 0 AND revenue > 0;
