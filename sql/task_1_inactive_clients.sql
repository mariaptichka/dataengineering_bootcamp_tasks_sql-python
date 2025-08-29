SELECT 
    COUNT(*) AS inactive_rich_clients
FROM clients
WHERE 
    active = FALSE 
    AND balance > 100000;
    