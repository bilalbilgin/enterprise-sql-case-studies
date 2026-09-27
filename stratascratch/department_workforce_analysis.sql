SELECT
    department,
    COUNT(id),
    SUM(salary),
    AVG(salary)
FROM techcorp_workforce
WHERE joining_date > '2020-01-01'
GROUP BY department
HAVING COUNT(id) > 5;