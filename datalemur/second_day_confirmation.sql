SELECT
    e.user_id
FROM emails AS e
JOIN texts AS t
    ON e.email_id = t.email_id
WHERE t.signup_action = 'Confirmed'
  AND DATE_PART('day', e.signup_date) + 1 = DATE_PART('day', t.action_date);