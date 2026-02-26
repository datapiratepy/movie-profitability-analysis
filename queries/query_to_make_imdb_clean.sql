CREATE OR REPLACE TABLE movie_project.imdb_clean AS
SELECT
  Series_Title AS title,
  SAFE_CAST(Released_Year AS INT64) AS release_year,
  SAFE_CAST(REPLACE(Runtime, ' min', '') AS INT64) AS runtime_minutes,
  IMDB_Rating AS imdb_rating,
  Meta_score,
  No_of_Votes,
  Genre
FROM movie_project.imdb_movies
WHERE IMDB_Rating IS NOT NULL;
