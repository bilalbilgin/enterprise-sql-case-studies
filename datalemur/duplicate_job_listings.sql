SELECT
    COUNT(a.company_id) / 2 AS duplicate_companies
FROM job_listings AS a
JOIN job_listings AS b
    ON a.company_id = b.company_id
WHERE a.job_id <> b.job_id
  AND a.description = b.description;