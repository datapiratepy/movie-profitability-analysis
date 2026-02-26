CREATE OR REPLACE TABLE movie_project.industry_clean AS
SELECT
  name AS title,
  SAFE_CAST(year AS INT64) AS release_year,
  rating AS certificate,
  genre AS industry_genre,
  released AS release_date_text,
  score AS industry_rating
FROM movie_project.movie_industry
WHERE name IS NOT NULL;
