--Display the (whole) movies table.

SELECT * FROM movies;

--Display only title and genres of the first 10 entries from the movies table 
--that is sorted alphabetically (starting from A) by the movie titles. pending

SELECT title, genres
FROM movies
WHERE title LIKE 'a%'
ORDER BY title
LIMIT (10);

--Display the total row count

SELECT COUNT(*) FROM movies;

--Display first 10 pure Drama movies. Only Drama is in the genre column.


SELECT * FROM movies 
WHERE genres = 'Drama'
LIMIT(10);

--Display the count of pure Drama movies.

SELECT COUNT(*) FROM movies
WHERE genres='Drama';

--Display the count of drama movies that can also contain other genres. 

SELECT * FROM movies
WHERE genres LIKE '%Drama%';


--Display the count of movies don’t have drama (in any combination) as assigned genre.
SELECT COUNT(*) FROM movies
WHERE genres  NOT LIKE '%Drama%';


--Display the count of movies that were released in 2003.

SELECT COUNT(*) FROM movies
WHERE year='2003';

--Find all movies with a year lower 1910.

SELECT * FROM movies
WHERE year <'1910';

--Retrieve all Star Wars movies from the movie table.
SELECT * FROM movies
 WHERE title LIKE '%Star%'
 AND title LIKE '%Wars%';

