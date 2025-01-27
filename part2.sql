DECLARE @username VARCHAR(30) = 'nnguyen';

DECLARE @specific_user_id INT = (SELECT [User].[user_id] FROM [User] WHERE [User].username = @username);

-- 4
SELECT T.title, T.rating_value, T.review_text FROM
(SELECT DISTINCT (P.production_id), P.title, R.rating_value, R.review_text FROM (((List AS L INNER JOIN Added_To_List AS AL ON (L.list_id = AL.list_id)) 
INNER JOIN Production AS P ON (AL.production_id = P.production_id)) INNER JOIN Rating AS R ON (R.production_id = P.production_id))
WHERE L.[user_id] = @specific_user_id AND R.[user_id] = @specific_user_id AND L.[type] = 'viewed') AS T;

-- 5
SELECT T.title, T.date_added FROM
(SELECT DISTINCT(P.production_id), P.title, AL.date_added FROM 
(List AS L INNER JOIN Added_To_List AS AL ON (L.list_id = AL.list_id)) 
INNER JOIN Production AS P ON (P.production_id = AL.production_id) 
WHERE L.[type] = 'download' AND L.[user_id] = @specific_user_id) AS T;

-- 6
SELECT title FROM Production WHERE genre = 'Sci-Fi' AND imdb_rating > 8;

-- 7
SELECT production_id, title FROM Production WHERE imdb_rating < 0 OR imdb_rating > 10;

-- 8
SELECT P.full_name FROM People AS P INNER JOIN 
(SELECT CC.person_id FROM
Cast_Crew AS CC WHERE CC.[role] = 'director' GROUP BY CC.person_id HAVING COUNT(production_id) > 3) AS D3
ON (D3.person_id = P.person_id);

-- 9
DECLARE @actor_id INT = (SELECT TOP 1 Actor_Count.person_id FROM 
(SELECT CC.person_id, COUNT(production_id) AS movie_count FROM
Cast_Crew AS CC WHERE CC.[role] = 'actor' GROUP BY CC.person_id) AS Actor_Count
ORDER BY Actor_Count.movie_count DESC);

SELECT full_name FROM People WHERE person_id = @actor_id;

-- 10
SELECT P.genre, COUNT(production_id) AS genre_count FROM
Production AS P GROUP BY P.genre
ORDER BY genre_count DESC;

-- 11
