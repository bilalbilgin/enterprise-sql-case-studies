SELECT
    o.order_date,
    o.order_details,
    o.total_order_cost,
    c.first_name
FROM customers AS c
JOIN orders AS o
    ON c.id = o.cust_id
    AND (c.first_name = 'Jill' OR c.first_name = 'Eva')
ORDER BY o.cust_id ASC;