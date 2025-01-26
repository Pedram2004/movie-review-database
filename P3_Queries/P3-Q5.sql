WITH AgeGroups AS (
    SELECT 
        [user_id],
        CASE 
            WHEN age <= 18 THEN '0-18'
            WHEN age BETWEEN 19 AND 25 THEN '19-25'
            WHEN age BETWEEN 26 AND 35 THEN '26-35'
            WHEN age BETWEEN 36 AND 50 THEN '36-50'
            ELSE '50+' 
        END AS age_group
    FROM [User]
),

GenreEngagement AS (
    SELECT 
        ag.age_group,
        p.genre,
        COUNT(r.rating_id) AS total_ratings, -- Total ratings given by the age group to the genre
        AVG(r.rating_value) AS average_rating, -- Average rating for the genre by the age group
        COUNT(atl.list_id) AS total_list_additions -- Total times the genre was added to lists (watch/download/viewed)
    FROM 
        AgeGroups ag
    LEFT JOIN 
        Rating r ON ag.[user_id] = r.[user_id]
    LEFT JOIN 
        Production p ON r.production_id = p.production_id
    LEFT JOIN 
        Added_To_List atl ON p.production_id = atl.production_id
    GROUP BY 
        ag.age_group, p.genre
)

SELECT 
    age_group,
    genre,
    total_ratings,
    average_rating,
    total_list_additions,
    -- Rank genres by engagement within each age group
    RANK() OVER (
        PARTITION BY age_group 
        ORDER BY (total_ratings + total_list_additions) DESC
    ) AS genre_rank
FROM 
    GenreEngagement
WHERE 
    genre IS NOT NULL  -- Exclude NULL genres (if any)
ORDER BY 
    age_group, genre_rank;