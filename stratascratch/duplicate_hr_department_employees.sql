SELECT
    first_name,
    department
FROM worker
WHERE department = 'HR'
UNION ALL
SELECT
    first_name,
    department
FROM worker
WHERE department = 'HR';