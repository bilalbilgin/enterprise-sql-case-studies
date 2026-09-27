SELECT
    1.0 * COUNT(*) FILTER (WHERE phone_number IS NULL) / COUNT(id) AS r
FROM techcorp_workforce;