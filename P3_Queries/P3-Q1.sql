SELECT 
    pe.full_name AS actor_name,
    p.genre AS genre,
    AVG(r.rating_value) AS average_rating
FROM 
    Production p
JOIN 
    Cast_Crew cc ON p.production_id = cc.production_id
JOIN 
    People pe ON cc.person_id = pe.person_id
JOIN 
    Rating r ON p.production_id = r.production_id
WHERE 
    cc.[role] = 'actor' -- Filter only actors
GROUP BY 
    pe.full_name, p.genre
ORDER BY 
    pe.full_name, p.genre;