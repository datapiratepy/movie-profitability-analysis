CREATE OR REPLACE TABLE movie_project.movies_master AS
SELECT
  t.movie_id,
  t.title,
  t.release_year,
  t.budget,
  t.revenue,
  t.profit,
  t.roi,
  t.tmdb_rating,
  i.imdb_rating,
  i.runtime_minutes,
  i.Genre AS imdb_genre,
  t.genres AS tmdb_genres,
  ind.certificate,
  ind.industry_rating,
  t.popularity,
  t.original_language
FROM movie_project.tmdb_clean t
LEFT JOIN movie_project.imdb_clean i
  ON LOWER(t.title) = LOWER(i.title)
  AND t.release_year = i.release_year
LEFT JOIN movie_project.industry_clean ind
  ON LOWER(t.title) = LOWER(ind.title)
  AND t.release_year = ind.release_year;
