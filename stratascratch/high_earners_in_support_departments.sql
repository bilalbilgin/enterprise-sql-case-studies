SELECT
    first_name,
    last_name,
    department,
    salary
FROM techcorp_workforce
WHERE salary > 80000
  AND (department = 'HR' OR department = 'Admin');