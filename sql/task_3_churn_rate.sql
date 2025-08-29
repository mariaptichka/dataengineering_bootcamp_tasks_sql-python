SELECT 
    card_type,
    COUNT(*) AS total_clients,
    SUM(CASE WHEN churn = TRUE THEN 1 ELSE 0 END) AS churned_clients,
    (SUM(CASE WHEN churn = TRUE THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS churn_rate_percent
FROM clients
GROUP BY card_type
ORDER BY churn_rate_percent DESC;