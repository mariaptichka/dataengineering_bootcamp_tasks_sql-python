WITH salary_ranks AS (
    SELECT 
        *,
        ROW_NUMBER() OVER (PARTITION BY country ORDER BY salary DESC) as rank_in_country
    FROM clients
)
SELECT 
    country,
    COUNT(CASE WHEN gender = 'F' THEN id END) AS top10_females,
    COUNT(CASE WHEN gender = 'M' THEN id END) AS top10_males
FROM salary_ranks
WHERE rank_in_country <= 10
GROUP BY country
HAVING COUNT(CASE WHEN gender = 'F' THEN id END) > COUNT(CASE WHEN gender = 'M' THEN id END);