--Display the total row count of the ratings table.
SELECT COUNT(*) from ratings;

--Display the total count of different genres combinations in the movies table. 


SELECT genres, count (genres)
from movies
GROUP BY genres;

--Display unique tags for movie with id equal 60756. Use tags table.

SELECT DISTINCT tag
from tags
WHERE movieid = '60756';

--Display the count of movies in the years 1990-2000 using the movies table. 

SELECT COUNT(*) from movies 
WHERE Year between 1990 and 2000;

--Display year and movie_count.

SELECT year, count (year)
from movies
WHERE Year between 1990 and 2000
GROUP BY year;

--Display the year where most of the movies u=in the database are from.

SELECT year, count (year) 
from movies
GROUP BY year
ORDER BY count (year) DESC
LIMIT 1;

--Display 10 movies with the most ratings. Use ratings table. Display movieid, count_movie_ratings.
SELECT * from ratings;

SELECT movieid, count (movieid)
from ratings
GROUP BY movieid
ORDER BY count(movieid) DESC
LIMIT 10;


--Display the top 10 highest rated movies by average that have at least 50 ratings.
--Display the movieid, average rating and rating count. Use the ratings table.
SELECT movieid ,count(rating),AVG (rating)
FROM ratings
GROUP BY movieid
HAVING count(rating)> 50
ORDER BY AVG (rating) DESC
LIMIT 10;
--Create a view that is a table of only movies that contain drama as one of it’s genres. 
--Display the first 10 movies in the view.pending

SELECT title, genres 
from movies
where genres LIKE '%Drama%'
LIMIT(10);







