WITH FirstOrders AS (
    SELECT 
        customer_id,
        order_date,
        customer_pref_delivery_date,
        delivery_id,
        ROW_NUMBER() OVER (
            PARTITION BY customer_id 
            ORDER BY order_date
        ) AS rn
    FROM Delivery
)
SELECT 
    ROUND(
        100.0 * COUNT(delivery_id) FILTER (WHERE order_date = customer_pref_delivery_date) 
        / COUNT(delivery_id), 
        2
    ) AS immediate_percentage
FROM FirstOrders
WHERE rn = 1;
