CREATE DATABASE IF NOT EXISTS imdb_genres;
USE imdb_genres;

CREATE EXTERNAL TABLE IF NOT EXISTS movie (
  tconst STRING,
  titleType STRING,
  primaryTitle STRING,
  originalTitle STRING,
  isAdult INT,
  startYear INT,
  endYear INT,
  runtimeMinutes INT,
  genres STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE
location '${hivevar:input_dir3}'
TBLPROPERTIES ("skip.header.line.count"="1");


CREATE EXTERNAL TABLE IF NOT EXISTS actor_count (
  movie_id STRING,
  actor_number INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE
location '${hivevar:input_dir4}';


INSERT OVERWRITE DIRECTORY '${hivevar:output_dir6}' 
USING JSON OPTIONS (col1 ganre, col2 movies, col3 actors)
SELECT exploded_data.genre, COUNT(exploded_data.tconst) as movies, SUM(ac.actor_number) as actors
FROM (
    SELECT m.tconst, genre
    FROM movie m
    LATERAL VIEW OUTER explode(split(m.genres, ',')) exploded_table AS genre  
    WHERE m.titleType = 'movie' 
) exploded_data
JOIN actor_count ac ON ac.movie_id = exploded_data.tconst 
GROUP BY genre 
LIMIT 3;
