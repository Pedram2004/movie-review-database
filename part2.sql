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
DECLARE @User_List TABLE (
production_id INT NOT NULL,
title VARCHAR(100) NOT NULL,
genre VARCHAR(20) NOT NULL,
[type] VARCHAR(6) NOT NULL
);

INSERT INTO @User_List (production_id, title, genre, [type]) 
(SELECT P.production_id, P.title, P.genre, L.[type] 
FROM ((List as L INNER JOIN Added_To_List AS AL ON (L.list_id = AL.list_id)) 
INNER JOIN Production AS P ON (P.production_id = AL.production_id)) WHERE
L.[user_id] = @specific_user_id)

SELECT title FROM
(SELECT DISTINCT (IUL.production_id), IUL.title FROM 
((SELECT * FROM @User_List AS UL WHERE UL.[type] = 'viewed')
INTERSECT 
(SELECT * FROM @User_List AS UL WHERE UL.[type] = 'download')) AS IUL) AS DIUL;


-- 12
WITH DP (production_id, title, date_added) AS 
(SELECT DISTINCT(P.production_id), P.title, AL.date_added FROM 
((List AS L INNER JOIN Added_To_List AS AL ON (L.list_id = AL.list_id))
INNER JOIN Production AS P ON (P.production_id = AL.production_id)) 
WHERE L.[type] = 'download' AND L.[user_id] = @specific_user_id)

SELECT title FROM DP 
WHERE DATEDIFF(dayofyear, date_added, CURRENT_TIMESTAMP) <= 30;



-- 13
DECLARE @director_name VARCHAR (50) = '';

DECLARE @director_id TABLE (person_id INT NOT NULL)

INSERT INTO @director_id(person_id)
(SELECT person_id FROM People WHERE People.full_name = @director_name); 


SELECT C.legal_name FROM
(SELECT Company_Count.company_id FROM
(SELECT PB.company_id, COUNT(PB.company_id) AS cooperation_count FROM 
((Cast_Crew AS CC INNER JOIN Production AS P ON (CC.production_id = P.production_id))
INNER JOIN Produced_By AS PB ON (PB.production_id = P.production_id))
WHERE CC.[role] = 'director' AND CC.person_id IN (SELECT * FROM @director_id)
GROUP BY PB.company_id) AS Company_Count
WHERE Company_Count.cooperation_count > 3) AS VC 
INNER JOIN Company as C ON (C.company_id = VC.company_id);

-- 14 
SELECT title FROM
(SELECT DISTINCT (IUL.production_id), IUL.title FROM 
((SELECT P.production_id, P.title FROM Production AS P WHERE P.genre = 'Action')
EXCEPT
(SELECT UL.production_id, UL.title FROM @User_List AS UL WHERE UL.[type] = 'viewed' AND UL.genre = 'Action')) AS IUL) AS AP;


-- 15
SELECT genre, SUM(revenue) FROM Production GROUP BY genre;


-- 16
SELECT title FROM
(SELECT DISTINCT (P.production_id), P.title FROM 
((SELECT R.production_id, COUNT(R.rating_id) AS rating_count FROM Rating AS R
WHERE R.rating_value > 8 GROUP BY R.production_id ) AS Movie_Count
INNER JOIN Production AS P ON (P.production_id = Movie_Count.production_id)) 
WHERE Movie_Count.rating_count > 50) AS Movie_Name;


-- 17
SELECT Acting_Drama.full_name FROM
(SELECT DISTINCT(P.person_id), P.full_name FROM 
(People AS P INNER JOIN Cast_Crew AS CC ON (P.person_id = CC.person_id)) 
INNER JOIN Production AS Pr ON (CC.production_id = Pr.production_id) 
WHERE Pr.genre = 'Drama' AND CC.[role] = 'actor') AS Acting_Drama; 

-- 18
DECLARE @change_production_id INT = 1;

UPDATE Production SET imdb_rating = 12 WHERE production_id = @change_production_id; 