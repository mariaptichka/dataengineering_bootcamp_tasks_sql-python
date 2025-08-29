SELECT 
    country
FROM (
    SELECT 
        country,
        COUNT(DISTINCT card_type) AS unique_cards_in_country
    FROM clients
    GROUP BY country
) country_cards
WHERE unique_cards_in_country < 3;