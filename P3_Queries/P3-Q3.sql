WITH ChristmasMovies AS (
    SELECT 
        revenue
    FROM 
        Production
    WHERE 
        [type] = 'Movie' -- Only consider movies
        AND MONTH(release_date) = 12 -- December
        AND DAY(release_date) BETWEEN 20 AND 31 -- Christmas holiday period (Dec 20 - Dec 31)
),
NonChristmasMovies AS (
    SELECT 
        revenue
    FROM 
        Production
    WHERE 
        [type] = 'Movie' -- Only consider movies
        AND NOT (MONTH(release_date) = 12 AND DAY(release_date) BETWEEN 20 AND 31) -- Exclude Christmas holiday period
)
SELECT 
    'Christmas Holiday Movies' AS category,
    AVG(revenue) AS average_revenue
FROM 
    ChristmasMovies
UNION ALL
SELECT 
    'Non-Christmas Holiday Movies' AS category,
    AVG(revenue) AS average_revenue
FROM 
    NonChristmasMovies;