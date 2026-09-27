SELECT
    h.manager_empl_id,
    m.salary,
    AVG(e.salary) AS avg_salary
FROM map_employee_hierarchy AS h
JOIN dim_employee AS e
    ON h.empl_id = e.empl_id
JOIN dim_employee AS m
    ON h.manager_empl_id = m.empl_id
GROUP BY
    h.manager_empl_id,
    m.salary
HAVING
    m.salary < 2 * AVG(e.salary);