---Using a JOIN display 5 movie titles with the lowest imdb ids

SELECT movies.movieid as movieid, links.imdbid as imdbid, movies.title as title
FROM movies
JOIN links
ON movies.movieid = links.movieid
ORDER BY imdbid ASC
LIMIT 5;

---Display the count of drama movies (in genres table)

SELECT COUNT(*) FROM genres
WHERE genre='Drama';

--Using a JOIN display all of the movie titles that have the tag fun

SELECT movies.movieid as movieid, tags.tag as tag, movies.title as title
FROM movies
JOIN tags
ON movies.movieid = tags.movieid
WHERE tag='fun';

--Using a JOIN find out which movie title is the first without a tag

SELECT movies.year as year, tags.tag as tag, movies.title as title
FROM movies
FULL JOIN tags
ON movies.movieid = tags.movieid
WHERE tag IS NULL
ORDER BY year ASC;

--Using a JOIN display the top 3 genres and their average rating

SELECT genres.genre as genre, AVG(ratings.rating) as rating
FROM genres
JOIN ratings
ON genres.movieid = ratings.movieid
GROUP BY genre
ORDER BY rating DESC
LIMIT 3;

---Using a JOIN display the top 10 movie titles by the number of ratings

SELECT movies.title as title, count(ratings.rating) as rating
FROM movies
FULL JOIN ratings
ON movies.movieid = ratings.movieid
GROUP BY title
ORDER BY rating DESC
LIMIT 10;

--Using a JOIN display all of the Star Wars movies in order of average rating
--where the film was rated by at least 40 users

SELECT movies.title as title, AVG(ratings.rating) as ratingavg, count(ratings.rating) as ratingcounts
FROM movies
FULL JOIN ratings
ON movies.movieid = ratings.movieid
WHERE title LIKE '%Star%'
AND title LIKE '%Wars%'
GROUP BY title
HAVING count(ratings.rating) >40
ORDER BY ratingavg DESC
LIMIT 10;




