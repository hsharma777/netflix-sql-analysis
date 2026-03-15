DROP TABLE IF EXISTS netflix;

CREATE TABLE netflix (
show_id TEXT,
type TEXT,
title TEXT,
director TEXT,
"cast" TEXT,
country TEXT,
date_added TEXT,
release_year INT,
rating TEXT,
duration TEXT,
listed_in TEXT,
description TEXT
);

SELECT COUNT (*) FROM netflix;

--DISPLAYING NULL VALUES--
SELECT * FROM netflix WHERE
show_id IS NULL
OR
type IS NULL
OR
title IS NULL
OR
director IS NULL
OR
"cast" IS NULL
OR
country IS NULL
OR
date_added IS NULL
OR
release_year IS NULL
OR
rating IS NULL
OR
duration IS NULL
OR
listed_in IS NULL
OR
description IS NULL;

--REMOVING NULL VALUES--
DELETE FROM netflix WHERE
show_id IS NULL
OR
type IS NULL
OR
title IS NULL
OR
director IS NULL
OR
"cast" IS NULL
OR
country IS NULL
OR
date_added IS NULL
OR
release_year IS NULL
OR
rating IS NULL
OR
duration IS NULL
OR
listed_in IS NULL
OR
description IS NULL;
SELECT type, COUNT(*) 
FROM netflix
GROUP BY type;

--CONTENT ADDED EACH YEAR--
SELECT release_year, COUNT(*)
FROM netflix
GROUP BY release_year
ORDER BY release_year;

--TOP 10 COUNTRIES PRODUCING NETFLIX CONTENT--
SELECT country, COUNT(*) AS total_content
FROM netflix
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total_content DESC
LIMIT 10;

-- MOST COMMON RATING --
SELECT rating, COUNT(*) AS common_rating
FROM netflix
GROUP BY rating
ORDER BY common_rating DESC
LIMIT 5;

--LONGEST MOVIE--
SELECT title, duration
FROM netflix
WHERE type='Movie'
ORDER BY duration DESC
LIMIT 10;

--CONVERSION OF date_added to DATE format--
SELECT title,
TO_DATE(date_added,'Month DD, YYYY')
FROM netflix;

--DIRECTOR WITH MOST MOVIES--
SELECT director, COUNT(*) AS total_movies
FROM netflix
GROUP BY director
ORDER BY total_movies DESC
LIMIT 15;

--MOVIE RELEASED AFTER 2013--
SELECT title, release_year
FROM netflix 
WHERE release_year > 2013

--TV SHOWS WITH MOST SEASONS--
SELECT title, duration
FROM netflix
WHERE type='TV Show'
ORDER BY duration DESC
LIMIT 11;

-- TITLES PRODUCED IN INDIA --
SELECT title
FROM netflix
WHERE country LIKE '%India%'
LIMIT 100;

--RANK DIRECTORS BY NUMBER OF TITLES--
SELECT director,
COUNT(*) AS total_titles,
RANK() OVER (ORDER BY COUNT (*) DESC) AS director_rank
FROM netflix 
GROUP BY director 
LIMIT 7;

-- TOTAL OF TITLES BY YEAR --
SELECT release_year,
COUNT(*) AS yearly_titles,
SUM(COUNT(*)) OVER (ORDER BY release_year) AS running_total
FROM netflix
GROUP BY release_year
ORDER BY release_year;

--end of the project--




