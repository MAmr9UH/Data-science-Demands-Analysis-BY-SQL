
with top_paying_jobs AS 
(
SELECT
job_id,
name AS Company_NAME,
job_postings_fact.job_title,
salary_year_avg
FROM
job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id =  company_dim.company_id
WHERE  job_postings_fact.job_title = 'Data Scientist'
AND salary_year_avg IS NOT NULL
AND job_postings_fact.job_location ='Anywhere'
ORDER BY  salary_year_avg DESC 
LIMIT 10
)
SELECT

top_paying_jobs.*,
skills_dim.skills

FROM
top_paying_jobs

JOIN skills_job_dim  ON   skills_job_dim.job_id=top_paying_jobs.job_id
JOIN    skills_dim  ON skills_dim.skill_id=skills_job_dim.skill_id








/*

The analysis of the 'skills' column reveals some interesting insights about the distribution of required skills across the data science job roles:

Top Skills:

Python is the most demanded skill, appearing 10 times.
SQL follows with 8 mentions.
AWS, R, Spark, and Tableau each have 3 mentions.
Skill Diversity:

The dataset lists a total of 23 different skills.
The average occurrence of a skill is about 2.26 times across the dataset, with a standard deviation of 2.28, indicating a somewhat uneven distribution where a few skills are much more in demand compared to others.



[
  {
    "job_id": 1131472,
    "company_name": "Algo Capital Group",
    "job_title": "Data Scientist",
    "salary_year_avg": "375000.0",
    "skills": "sql"
  },
  {
    "job_id": 1131472,
    "company_name": "Algo Capital Group",
    "job_title": "Data Scientist",
    "salary_year_avg": "375000.0",
    "skills": "python"
  },
  {
    "job_id": 1131472,
    "company_name": "Algo Capital Group",
    "job_title": "Data Scientist",
    "salary_year_avg": "375000.0",
    "skills": "java"
  },
  {
    "job_id": 1131472,
    "company_name": "Algo Capital Group",
    "job_title": "Data Scientist",
    "salary_year_avg": "375000.0",
    "skills": "cassandra"
  },
  {
    "job_id": 1131472,
    "company_name": "Algo Capital Group",
    "job_title": "Data Scientist",
    "salary_year_avg": "375000.0",
    "skills": "spark"
  },
  {
    "job_id": 1131472,
    "company_name": "Algo Capital Group",
    "job_title": "Data Scientist",
    "salary_year_avg": "375000.0",
    "skills": "hadoop"
  },
  {
    "job_id": 1131472,
    "company_name": "Algo Capital Group",
    "job_title": "Data Scientist",
    "salary_year_avg": "375000.0",
    "skills": "tableau"
  },
  {
    "job_id": 158782,
    "company_name": "Algo Capital Group",
    "job_title": "Data Scientist",
    "salary_year_avg": "275000.0",
    "skills": "sql"
  },
  {
    "job_id": 158782,
    "company_name": "Algo Capital Group",
    "job_title": "Data Scientist",
    "salary_year_avg": "275000.0",
    "skills": "python"
  },
  {
    "job_id": 158782,
    "company_name": "Algo Capital Group",
    "job_title": "Data Scientist",
    "salary_year_avg": "275000.0",
    "skills": "java"
  },
  {
    "job_id": 158782,
    "company_name": "Algo Capital Group",
    "job_title": "Data Scientist",
    "salary_year_avg": "275000.0",
    "skills": "cassandra"
  },
  {
    "job_id": 158782,
    "company_name": "Algo Capital Group",
    "job_title": "Data Scientist",
    "salary_year_avg": "275000.0",
    "skills": "aws"
  },
  {
    "job_id": 158782,
    "company_name": "Algo Capital Group",
    "job_title": "Data Scientist",
    "salary_year_avg": "275000.0",
    "skills": "spark"
  },
  {
    "job_id": 158782,
    "company_name": "Algo Capital Group",
    "job_title": "Data Scientist",
    "salary_year_avg": "275000.0",
    "skills": "airflow"
  },
  {
    "job_id": 158782,
    "company_name": "Algo Capital Group",
    "job_title": "Data Scientist",
    "salary_year_avg": "275000.0",
    "skills": "hadoop"
  },
  {
    "job_id": 158782,
    "company_name": "Algo Capital Group",
    "job_title": "Data Scientist",
    "salary_year_avg": "275000.0",
    "skills": "tableau"
  },
  {
    "job_id": 1489914,
    "company_name": "Smith Hanley Associates",
    "job_title": "Data Scientist",
    "salary_year_avg": "250000.0",
    "skills": "sql"
  },
  {
    "job_id": 1489914,
    "company_name": "Smith Hanley Associates",
    "job_title": "Data Scientist",
    "salary_year_avg": "250000.0",
    "skills": "python"
  },
  {
    "job_id": 1489914,
    "company_name": "Smith Hanley Associates",
    "job_title": "Data Scientist",
    "salary_year_avg": "250000.0",
    "skills": "javascript"
  },
  {
    "job_id": 1489914,
    "company_name": "Smith Hanley Associates",
    "job_title": "Data Scientist",
    "salary_year_avg": "250000.0",
    "skills": "html"
  },
  {
    "job_id": 1489914,
    "company_name": "Smith Hanley Associates",
    "job_title": "Data Scientist",
    "salary_year_avg": "250000.0",
    "skills": "mongodb"
  },
  {
    "job_id": 1489914,
    "company_name": "Smith Hanley Associates",
    "job_title": "Data Scientist",
    "salary_year_avg": "250000.0",
    "skills": "vba"
  },
  {
    "job_id": 1489914,
    "company_name": "Smith Hanley Associates",
    "job_title": "Data Scientist",
    "salary_year_avg": "250000.0",
    "skills": "php"
  },
  {
    "job_id": 1489914,
    "company_name": "Smith Hanley Associates",
    "job_title": "Data Scientist",
    "salary_year_avg": "250000.0",
    "skills": "mongodb"
  },
  {
    "job_id": 1489914,
    "company_name": "Smith Hanley Associates",
    "job_title": "Data Scientist",
    "salary_year_avg": "250000.0",
    "skills": "aws"
  },
  {
    "job_id": 1489914,
    "company_name": "Smith Hanley Associates",
    "job_title": "Data Scientist",
    "salary_year_avg": "250000.0",
    "skills": "tensorflow"
  },
  {
    "job_id": 1489914,
    "company_name": "Smith Hanley Associates",
    "job_title": "Data Scientist",
    "salary_year_avg": "250000.0",
    "skills": "scikit-learn"
  },
  {
    "job_id": 1489914,
    "company_name": "Smith Hanley Associates",
    "job_title": "Data Scientist",
    "salary_year_avg": "250000.0",
    "skills": "excel"
  },
  {
    "job_id": 1489914,
    "company_name": "Smith Hanley Associates",
    "job_title": "Data Scientist",
    "salary_year_avg": "250000.0",
    "skills": "tableau"
  },
  {
    "job_id": 1489914,
    "company_name": "Smith Hanley Associates",
    "job_title": "Data Scientist",
    "salary_year_avg": "250000.0",
    "skills": "powerpoint"
  },
  {
    "job_id": 1538418,
    "company_name": "Grammarly",
    "job_title": "Data Scientist",
    "salary_year_avg": "204500.0",
    "skills": "sql"
  },
  {
    "job_id": 1538418,
    "company_name": "Grammarly",
    "job_title": "Data Scientist",
    "salary_year_avg": "204500.0",
    "skills": "python"
  },
  {
    "job_id": 1538418,
    "company_name": "Grammarly",
    "job_title": "Data Scientist",
    "salary_year_avg": "204500.0",
    "skills": "scala"
  },
  {
    "job_id": 1538418,
    "company_name": "Grammarly",
    "job_title": "Data Scientist",
    "salary_year_avg": "204500.0",
    "skills": "r"
  },
  {
    "job_id": 727817,
    "company_name": "Cisco",
    "job_title": "Data Scientist",
    "salary_year_avg": "197500.0",
    "skills": "sql"
  },
  {
    "job_id": 727817,
    "company_name": "Cisco",
    "job_title": "Data Scientist",
    "salary_year_avg": "197500.0",
    "skills": "python"
  },
  {
    "job_id": 727817,
    "company_name": "Cisco",
    "job_title": "Data Scientist",
    "salary_year_avg": "197500.0",
    "skills": "r"
  },
  {
    "job_id": 727817,
    "company_name": "Cisco",
    "job_title": "Data Scientist",
    "salary_year_avg": "197500.0",
    "skills": "snowflake"
  },
  {
    "job_id": 727817,
    "company_name": "Cisco",
    "job_title": "Data Scientist",
    "salary_year_avg": "197500.0",
    "skills": "sheets"
  },
  {
    "job_id": 448423,
    "company_name": "Storm2",
    "job_title": "Data Scientist",
    "salary_year_avg": "195000.0",
    "skills": "python"
  },
  {
    "job_id": 1693772,
    "company_name": "Tomorrow.io",
    "job_title": "Data Scientist",
    "salary_year_avg": "190600.0",
    "skills": "python"
  },
  {
    "job_id": 1693772,
    "company_name": "Tomorrow.io",
    "job_title": "Data Scientist",
    "salary_year_avg": "190600.0",
    "skills": "aws"
  },
  {
    "job_id": 37309,
    "company_name": "Grammarly",
    "job_title": "Data Scientist",
    "salary_year_avg": "186000.0",
    "skills": "sql"
  },
  {
    "job_id": 37309,
    "company_name": "Grammarly",
    "job_title": "Data Scientist",
    "salary_year_avg": "186000.0",
    "skills": "python"
  },
  {
    "job_id": 37309,
    "company_name": "Grammarly",
    "job_title": "Data Scientist",
    "salary_year_avg": "186000.0",
    "skills": "scala"
  },
  {
    "job_id": 37309,
    "company_name": "Grammarly",
    "job_title": "Data Scientist",
    "salary_year_avg": "186000.0",
    "skills": "r"
  },
  {
    "job_id": 910502,
    "company_name": "Brookwood Search & Selection",
    "job_title": "Data Scientist",
    "salary_year_avg": "185000.0",
    "skills": "sql"
  },
  {
    "job_id": 910502,
    "company_name": "Brookwood Search & Selection",
    "job_title": "Data Scientist",
    "salary_year_avg": "185000.0",
    "skills": "python"
  },
  {
    "job_id": 64405,
    "company_name": "Mineral.ai",
    "job_title": "Data Scientist",
    "salary_year_avg": "185000.0",
    "skills": "sql"
  },
  {
    "job_id": 64405,
    "company_name": "Mineral.ai",
    "job_title": "Data Scientist",
    "salary_year_avg": "185000.0",
    "skills": "python"
  },
  {
    "job_id": 64405,
    "company_name": "Mineral.ai",
    "job_title": "Data Scientist",
    "salary_year_avg": "185000.0",
    "skills": "databricks"
  },
  {
    "job_id": 64405,
    "company_name": "Mineral.ai",
    "job_title": "Data Scientist",
    "salary_year_avg": "185000.0",
    "skills": "spark"
  }
]

/*