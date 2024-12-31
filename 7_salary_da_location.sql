SELECT
    job_location,
    ROUND(AVG(salary_year_avg)) AS avg_salary
FROM
    job_postings_fact
WHERE
    job_location <> 'Anywhere'
    AND salary_year_avg IS NOT NULL
    AND job_title_short = 'Data Analyst'
GROUP BY
    job_location
ORDER BY
    avg_salary DESC
LIMIT 10;