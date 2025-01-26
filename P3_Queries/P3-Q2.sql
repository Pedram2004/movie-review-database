WITH ActorCombinations AS (
    SELECT 
        cc1.person_id AS actor1_id,
        cc2.person_id AS actor2_id,
        cc3.person_id AS actor3_id,
        p.production_id,
        p.revenue
    FROM 
        Cast_Crew cc1
    JOIN 
        Cast_Crew cc2 ON cc1.production_id = cc2.production_id AND cc1.person_id < cc2.person_id
    JOIN 
        Cast_Crew cc3 ON cc1.production_id = cc3.production_id AND cc2.person_id < cc3.person_id
    JOIN 
        Production p ON cc1.production_id = p.production_id
    WHERE 
        cc1.[role] = 'actor' AND cc2.[role] = 'actor' AND cc3.[role] = 'actor'
),
CombinationRevenue AS (
    SELECT 
        actor1_id,
        actor2_id,
        actor3_id,
        SUM(revenue) AS total_revenue
    FROM 
        ActorCombinations
    GROUP BY 
        actor1_id, actor2_id, actor3_id
),
RankedCombinations AS (
    SELECT 
        actor1_id,
        actor2_id,
        actor3_id,
        total_revenue,
        RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank
    FROM 
        CombinationRevenue
)
SELECT 
    p1.full_name AS actor1_name,
    p2.full_name AS actor2_name,
    p3.full_name AS actor3_name,
    rc.total_revenue
FROM 
    RankedCombinations rc
JOIN 
    People p1 ON rc.actor1_id = p1.person_id
JOIN 
    People p2 ON rc.actor2_id = p2.person_id
JOIN 
    People p3 ON rc.actor3_id = p3.person_id
WHERE 
    rc.revenue_rank = 1;