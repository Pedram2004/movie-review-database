DECLARE @user_id INT = 499; -- Target user's ID
DECLARE @start_date DATE = DATEADD(YEAR, -1, GETDATE());

WITH UserActivity AS (
    SELECT
        p.production_id,
        p.title,
        p.genre,
        p.[type],
        atl.date_added
    FROM
        Added_To_List atl
    JOIN
        List l ON atl.list_id = l.list_id
    JOIN
        Production p ON atl.production_id = p.production_id
    WHERE
        l.[user_id] = @user_id
        AND atl.date_added >= @start_date
),

UserRatings AS (
    SELECT
        production_id,
        rating_value,
        review_text
    FROM
        Rating
    WHERE
        [user_id] = @user_id
        AND date_created >= @start_date
),

TopGenres AS (
    SELECT TOP 3
        genre,
        COUNT(*) AS interaction_count
    FROM
        UserActivity
    GROUP BY
        genre
    ORDER BY
        interaction_count DESC
),

MostWatched AS (
    SELECT TOP 3
        title,
        COUNT(*) AS watch_count
    FROM
        UserActivity
    GROUP BY
        title
    ORDER BY
        watch_count DESC
),

MonthlyActivity AS (
    SELECT
        FORMAT(date_added, 'yyyy-MM') AS month,
        COUNT(*) AS activity_count
    FROM
        UserActivity
    GROUP BY
        FORMAT(date_added, 'yyyy-MM')
),

CommunityComparison AS (
    SELECT
        AVG(r.rating_value) AS community_avg_rating,
        (SELECT AVG(rating_value) FROM UserRatings) AS user_avg_rating
    FROM
        Rating r
    WHERE
        r.date_created >= @start_date
),

Milestones AS (
    SELECT
        MIN(p.release_date) AS oldest_production_watched,
        MAX(atl.date_added) AS most_recent_activity
    FROM
        UserActivity ua
    JOIN
        Production p ON ua.production_id = p.production_id
    JOIN
        Added_To_List atl ON ua.production_id = atl.production_id
)

-- FINAL REPORT
SELECT
    (SELECT TOP 1 genre FROM TopGenres ORDER BY interaction_count DESC) AS top_genre,
    (SELECT STRING_AGG(genre, ', ') FROM TopGenres) AS top_3_genres,
    (SELECT TOP 1 title FROM MostWatched ORDER BY watch_count DESC) AS most_watched_production,
    (SELECT STRING_AGG(title, ', ') FROM MostWatched) AS top_3_productions,
    (SELECT TOP 1 month FROM MonthlyActivity ORDER BY activity_count DESC) AS most_active_month,
    (SELECT user_avg_rating FROM CommunityComparison) AS user_avg_rating,
    (SELECT community_avg_rating FROM CommunityComparison) AS community_avg_rating,
    (SELECT oldest_production_watched FROM Milestones) AS oldest_production_watched,
    (SELECT most_recent_activity FROM Milestones) AS most_recent_activity;