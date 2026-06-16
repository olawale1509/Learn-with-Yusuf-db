/*
 we want to determine the highest paying skills, also the  skills required for data analyst
 */
with highest_paying_skills as(
  SELECT *
  FROM job_postings_fact j
    left JOIN skills_job_dim sj ON j.job_id = sj.job_id
    left JOIN skills_dim sd ON sj.skill_id = sd.skill_id
  where job_title_short = 'Data Analyst'
    and job_location = 'Anywhere'
    and salary_year_avg is NOT NULL
),
new_pay_skill as(
  select *
  FROM highest_paying_skills
  where job_title_short LIKE '%Data Analyst%'
)
SELECT c.name,
  np.job_title,
  np.skills,
  ROUND(AVG(np.salary_year_avg), 0) AS Average_Salary
FROM company_dim c
  LEFT JOIN new_pay_skill np ON c.company_id = np.company_id
WHERE np.skills IS NOT NULL
GROUP BY c.name,
  np.job_title,
  np.skills
ORDER BY Average_Salary DESC
LIMIT 25;
[
  {
    "name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "skills": "sql",
    "average_salary": "255830"
  },
  {
    "name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "skills": "aws",
    "average_salary": "255830"
  },
  {
    "name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "skills": "jupyter",
    "average_salary": "255830"
  },
  {
    "name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "skills": "azure",
    "average_salary": "255830"
  },
  {
    "name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "skills": "excel",
    "average_salary": "255830"
  },
  {
    "name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "skills": "tableau",
    "average_salary": "255830"
  },
  {
    "name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "skills": "power bi",
    "average_salary": "255830"
  },
  {
    "name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "skills": "databricks",
    "average_salary": "255830"
  },
  {
    "name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "skills": "pandas",
    "average_salary": "255830"
  },
  {
    "name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "skills": "pyspark",
    "average_salary": "255830"
  },
  {
    "name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "skills": "python",
    "average_salary": "255830"
  },
  {
    "name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "skills": "powerpoint",
    "average_salary": "255830"
  },
  {
    "name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "skills": "r",
    "average_salary": "255830"
  },
  {
    "name": "Pinterest Job Advertisements",
    "job_title": "Data Analyst, Marketing",
    "skills": "sql",
    "average_salary": "232423"
  },
  {
    "name": "Pinterest Job Advertisements",
    "job_title": "Data Analyst, Marketing",
    "skills": "hadoop",
    "average_salary": "232423"
  },
  {
    "name": "Pinterest Job Advertisements",
    "job_title": "Data Analyst, Marketing",
    "skills": "python",
    "average_salary": "232423"
  },
  {
    "name": "Pinterest Job Advertisements",
    "job_title": "Data Analyst, Marketing",
    "skills": "r",
    "average_salary": "232423"
  },
  {
    "name": "Pinterest Job Advertisements",
    "job_title": "Data Analyst, Marketing",
    "skills": "tableau",
    "average_salary": "232423"
  },
  {
    "name": "Uclahealthcareers",
    "job_title": "Data Analyst (Hybrid/Remote)",
    "skills": "sql",
    "average_salary": "217000"
  },
  {
    "name": "Uclahealthcareers",
    "job_title": "Data Analyst (Hybrid/Remote)",
    "skills": "tableau",
    "average_salary": "217000"
  },
  {
    "name": "Uclahealthcareers",
    "job_title": "Data Analyst (Hybrid/Remote)",
    "skills": "crystal",
    "average_salary": "217000"
  },
  {
    "name": "Uclahealthcareers",
    "job_title": "Data Analyst (Hybrid/Remote)",
    "skills": "flow",
    "average_salary": "217000"
  },
  {
    "name": "Uclahealthcareers",
    "job_title": "Data Analyst (Hybrid/Remote)",
    "skills": "oracle",
    "average_salary": "217000"
  },
  {
    "name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "skills": "numpy",
    "average_salary": "205000"
  },
  {
    "name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "skills": "pandas",
    "average_salary": "205000"
  }
] ```
Insights
SQL and Tableau are the most frequently appearing skills — they’re foundational for data querying and visualization across industries.

Python and R remain essential programming languages for analytics and modeling.

Pandas bridges programming and data manipulation, showing up in both tech and finance roles.

Cloud and Big Data tools (AWS, Azure, Databricks, PySpark) appear primarily in AT&T’s high-paying role, signaling that enterprise-scale data infrastructure expertise drives top-tier compensation.

Visualization tools (Power BI, Tableau) are consistently valued, emphasizing the importance of storytelling with data.

Legacy tools (Crystal, Oracle) still appear in healthcare analytics, reflecting hybrid tech environments.

```