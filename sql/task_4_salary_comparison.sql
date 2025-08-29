SELECT 
    id,
    name,
    country,
    salary,
    (SELECT AVG(salary) FROM clients c2 WHERE c2.country = c1.country) AS avg_country_salary,
    salary - (SELECT AVG(salary) FROM clients c2 WHERE c2.country = c1.country) AS difference
FROM clients c1
ORDER BY country, difference DESC;