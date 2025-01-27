WITH ViewedAdditions AS (
    -- Get all parts of series added to "viewed" lists
    SELECT
        p.production_id,
        p.title AS series_title,
        atl.part_number,
        l.[user_id]
    FROM
        Production p
    JOIN
        Part pt ON p.production_id = pt.production_id
    JOIN
        Added_To_List atl ON pt.production_id = atl.production_id 
                          AND pt.part_number = atl.part_number
    JOIN
        List l ON atl.list_id = l.list_id
    WHERE
        p.[type] = 'Series'  -- Only consider series
        AND l.[type] = 'viewed'  -- Only "viewed" lists
),

TotalViewers AS (
    -- Count total unique viewers per series
    SELECT
        production_id,
        series_title,
        COUNT(DISTINCT [user_id]) AS total_viewers
    FROM
        ViewedAdditions
    GROUP BY
        production_id, series_title
),

RetainedViewers AS (
    -- Identify users who watched at least 2 parts (retained)
    SELECT
        production_id,
        series_title,
        [user_id]
    FROM
        ViewedAdditions
    GROUP BY
        production_id, series_title, [user_id]
    HAVING
        COUNT(DISTINCT part_number) >= 2  -- Watched at least 2 parts
)

-- Calculate retention rate for each series
SELECT
    tv.series_title,
    tv.total_viewers,
    COALESCE(COUNT(DISTINCT rv.[user_id]), 0) AS retained_viewers,
    CASE
        WHEN tv.total_viewers = 0 THEN 0
        ELSE CAST(COALESCE(COUNT(DISTINCT rv.[user_id]), 0) * 100.0 / tv.total_viewers AS NUMERIC(5, 2))
    END AS retention_rate_percent
FROM
    TotalViewers tv
LEFT JOIN
    RetainedViewers rv ON tv.production_id = rv.production_id
GROUP BY
    tv.series_title, tv.total_viewers
ORDER BY
    retention_rate_percent DESC;