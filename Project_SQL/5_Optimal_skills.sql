
WITH  A AS(
SELECT
skills_dim.skill_id,
skills_dim.skills
,
COUNT(skills_job_dim.job_id) as SKILLS_DEMAND
from job_postings_fact

INNER JOIN skills_job_dim ON  job_postings_fact.job_id=skills_job_dim.job_id 
INNER JOIN  skills_dim ON  skills_job_dim.skill_id=skills_dim.skill_id

WHERE 

job_title_short='Data Scientist'
and job_work_from_home= TRUE
AND salary_year_avg is NOT NULL

GROUP BY skills_dim.skill_id 



),

B  AS
(
SELECT
skills
,
skills_dim.skill_id,
round (AVG(salary_year_avg),0)  AS avg_salary
from job_postings_fact

INNER JOIN skills_job_dim ON  job_postings_fact.job_id=skills_job_dim.job_id 
INNER JOIN  skills_dim ON  skills_job_dim.skill_id=skills_dim.skill_id

WHERE 

job_title_short='Data Scientist'

AND salary_year_avg is NOT NULL
and job_work_from_home= TRUE
GROUP BY skills_dim.skill_id 



)

SELECT
A.skill_id ,
A.skills,
A.SKILLS_DEMAND,
B.avg_salary

from A

join     B  ON  B.skill_id=a.skill_id
WHERE SKILLS_DEMAND>15

ORDER BY avg_salary DESC,
SKILLS_DEMAND DESC

LIMIT 25;