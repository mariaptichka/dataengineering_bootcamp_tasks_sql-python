SELECT 
    country,
    AVG(credit_score) AS avg_credit_score
FROM clients
GROUP BY country
ORDER BY avg_credit_score DESC;