SELECT
    company_dim.name,
    COUNT(job_postings_fact.job_id) AS job_count
FROM
    job_postings_fact
INNER JOIN
    company_dim
ON
    company_dim.company_id = job_postings_fact.company_id
WHERE
    job_postings_fact.job_title_short = 'Data Analyst'
GROUP BY
    company_dim.name
ORDER BY
    job_count DESC
LIMIT 5;




