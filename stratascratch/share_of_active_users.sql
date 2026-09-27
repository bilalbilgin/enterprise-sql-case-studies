SELECT
    100.0 * COUNT(*) FILTER (WHERE country = 'USA' AND status = 'open') / COUNT(*) AS usac
FROM fb_active_users;