
---Checking the average rating on Horror movies through the years
SELECT genres.genre as genre, movies.year as year, AVG(ratings.rating) as ratingavg
FROM genres
FULL JOIN ratings
ON genres.movieid = ratings.movieid
FULL JOIN movies
ON genres.movieid = movies.movieid
WHERE genre = 'Horror' --only horror 
GROUP BY genre,year
ORDER BY ratingavg DESC;

---Checking the peak in 1991,---> Silence of the Lambs
SELECT  movies.title as title, genres.genre as genre, AVG(ratings.rating) as ratingavg
FROM movies
FULL JOIN ratings
ON movies.movieid = ratings.movieid
FULL JOIN genres
ON movies.movieid = genres.movieid
WHERE genre = 'Horror' and year=1991
--WHERE title ilike '%%'
GROUP BY title, genre
ORDER BY ratingavg DESC;

---Selecting average rating for Drama and Horror movies through the years
SELECT genres.genre as genre, movies.year as year, AVG(ratings.rating) as ratingavg
FROM genres
FULL JOIN ratings
ON genres.movieid = ratings.movieid
FULL JOIN movies
ON genres.movieid = movies.movieid
WHERE genre ='Drama' or genre = 'Horror'
GROUP BY genre,year
ORDER BY year ASC;


