SELECT
name,
job_postings_fact.job_title,
job_postings_fact.job_location,
job_title_short,
salary_year_avg,
job_postings_fact.job_schedule_type
,job_posted_date
FROM
job_postings_fact
LEFT JOIN company_dim ON company_dim.company_id=job_postings_fact.company_id
WHERE  job_postings_fact.job_title_short = 'Data Scientist'
AND salary_year_avg IS NOT NULL
AND job_postings_fact.job_location ='Anywhere'
ORDER BY  salary_year_avg DESC 
LIMIT 10;
