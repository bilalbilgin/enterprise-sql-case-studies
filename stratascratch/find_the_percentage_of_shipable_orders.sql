SELECT
    100.0 * COUNT(c.address) / COUNT(*) AS percent_shipable
FROM orders AS o
LEFT JOIN customers AS c
    ON o.cust_id = c.id;