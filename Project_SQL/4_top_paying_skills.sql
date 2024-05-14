


SELECT
skills
,
round (AVG(salary_year_avg),0)  AS avg_salary
from job_postings_fact

INNER JOIN skills_job_dim ON  job_postings_fact.job_id=skills_job_dim.job_id 
INNER JOIN  skills_dim ON  skills_job_dim.skill_id=skills_dim.skill_id

WHERE 

job_title_short='Data Scientist'

AND salary_year_avg is NOT NULL

GROUP BY skills
ORDER BY 
avg_salary DESC

LIMIT 40;


/*
merging and Specialized Skills: Skills such as Asana and Airtable, which are not traditionally associated with data science, top the salary list, indicating a premium on niche and emerging skills in the tech landscape.

Demand for Programming and Big Data Expertise: Established programming languages and big data technologies like Ruby on Rails, Solidity, and Snowflake also command high salaries, showing the ongoing need for core technical competencies in data science.

Importance of AI and Machine Learning: AI-related skills like TensorFlow, PyTorch, and Hugging Face are crucial, reflecting their role in high-value data science applications and their impact on salary trends.
*/




/*

[
  {
    "skills": "asana",
    "avg_salary": "215477"
  },
  {
    "skills": "airtable",
    "avg_salary": "201143"
  },
  {
    "skills": "redhat",
    "avg_salary": "189500"
  },
  {
    "skills": "watson",
    "avg_salary": "187417"
  },
  {
    "skills": "elixir",
    "avg_salary": "170824"
  },
  {
    "skills": "lua",
    "avg_salary": "170500"
  },
  {
    "skills": "slack",
    "avg_salary": "168219"
  },
  {
    "skills": "solidity",
    "avg_salary": "166980"
  },
  {
    "skills": "ruby on rails",
    "avg_salary": "166500"
  },
  {
    "skills": "rshiny",
    "avg_salary": "166436"
  },
  {
    "skills": "notion",
    "avg_salary": "165636"
  },
  {
    "skills": "objective-c",
    "avg_salary": "164500"
  },
  {
    "skills": "neo4j",
    "avg_salary": "163971"
  },
  {
    "skills": "dplyr",
    "avg_salary": "163111"
  },
  {
    "skills": "hugging face",
    "avg_salary": "160868"
  },
  {
    "skills": "dynamodb",
    "avg_salary": "160581"
  },
  {
    "skills": "haskell",
    "avg_salary": "157500"
  },
  {
    "skills": "unity",
    "avg_salary": "156881"
  },
  {
    "skills": "airflow",
    "avg_salary": "155878"
  },
  {
    "skills": "codecommit",
    "avg_salary": "154684"
  },
  {
    "skills": "unreal",
    "avg_salary": "153278"
  },
  {
    "skills": "theano",
    "avg_salary": "153133"
  },
  {
    "skills": "zoom",
    "avg_salary": "151677"
  },
  {
    "skills": "bigquery",
    "avg_salary": "149292"
  },
  {
    "skills": "atlassian",
    "avg_salary": "148715"
  },
  {
    "skills": "express",
    "avg_salary": "148333"
  },
  {
    "skills": "kotlin",
    "avg_salary": "147925"
  },
  {
    "skills": "looker",
    "avg_salary": "147538"
  },
  {
    "skills": "npm",
    "avg_salary": "147500"
  },
  {
    "skills": "go",
    "avg_salary": "147466"
  },
  {
    "skills": "openstack",
    "avg_salary": "146697"
  },
  {
    "skills": "pytorch",
    "avg_salary": "145989"
  },
  {
    "skills": "scala",
    "avg_salary": "145056"
  },
  {
    "skills": "mxnet",
    "avg_salary": "144874"
  },
  {
    "skills": "spark",
    "avg_salary": "144399"
  },
  {
    "skills": "golang",
    "avg_salary": "144090"
  },
  {
    "skills": "tensorflow",
    "avg_salary": "143440"
  },
  {
    "skills": "microstrategy",
    "avg_salary": "143343"
  },
  {
    "skills": "gdpr",
    "avg_salary": "142981"
  },
  {
    "skills": "snowflake",
    "avg_salary": "142691"
  }
]

/*