SELECT
    c2.card_name,
    (MAX(c1.issued_amount) - MIN(c2.issued_amount)) AS difference
FROM monthly_cards_issued AS c1
JOIN monthly_cards_issued AS c2
    ON c1.card_name = c2.card_name
   AND c1.issue_year = c2.issue_year
GROUP BY c2.card_name
ORDER BY difference DESC;