



with job_paying as(
SELECT
cd.name as company_name, job_id,salary_year_avg
FROM job_postings_fact jp
left join company_dim cd 
ON cd.company_id=jp.company_id
where job_title_short = 'Data Analyst'
and job_location='Anywhere'
and salary_year_avg is NOT NULL
order by salary_year_avg desc
limit 10
)
select pj.*,skills from job_paying pj
inner JOIN skills_job_dim sj
on sj.job_id=pj.job_id
join skills_dim sd
on sd.skill_id=sj.skill_id
;





select * from skills_dim LIMIT 10;
select * from skills_job_dim LIMIT 10;
select * from job_postings_fact LIMIT 10;


/*

Most In-Demand Core Skills
SQL (8 occurrences) → Most critical skill across top roles
Python (7 occurrences) → Strong requirement for data manipulation and analysis
Tableau (6 occurrences) → Leading visualization tool
Interpretation:
Employers prioritize candidates who can query data (SQL), analyze/program (Python), and visualize insights (Tableau).

*/





[
  {
    "company_name": "AT&T",
    "job_id": 552322,
    "salary_year_avg": "255829.5",
    "skills": "sql"
  },
  {
    "company_name": "AT&T",
    "job_id": 552322,
    "salary_year_avg": "255829.5",
    "skills": "python"
  },
  {
    "company_name": "AT&T",
    "job_id": 552322,
    "salary_year_avg": "255829.5",
    "skills": "r"
  },
  {
    "company_name": "AT&T",
    "job_id": 552322,
    "salary_year_avg": "255829.5",
    "skills": "azure"
  },
  {
    "company_name": "AT&T",
    "job_id": 552322,
    "salary_year_avg": "255829.5",
    "skills": "databricks"
  },
  {
    "company_name": "AT&T",
    "job_id": 552322,
    "salary_year_avg": "255829.5",
    "skills": "aws"
  },
  {
    "company_name": "AT&T",
    "job_id": 552322,
    "salary_year_avg": "255829.5",
    "skills": "pandas"
  },
  {
    "company_name": "AT&T",
    "job_id": 552322,
    "salary_year_avg": "255829.5",
    "skills": "pyspark"
  },
  {
    "company_name": "AT&T",
    "job_id": 552322,
    "salary_year_avg": "255829.5",
    "skills": "jupyter"
  },
  {
    "company_name": "AT&T",
    "job_id": 552322,
    "salary_year_avg": "255829.5",
    "skills": "excel"
  },
  {
    "company_name": "AT&T",
    "job_id": 552322,
    "salary_year_avg": "255829.5",
    "skills": "tableau"
  },
  {
    "company_name": "AT&T",
    "job_id": 552322,
    "salary_year_avg": "255829.5",
    "skills": "power bi"
  },
  {
    "company_name": "AT&T",
    "job_id": 552322,
    "salary_year_avg": "255829.5",
    "skills": "powerpoint"
  },
  {
    "company_name": "Pinterest Job Advertisements",
    "job_id": 99305,
    "salary_year_avg": "232423.0",
    "skills": "sql"
  },
  {
    "company_name": "Pinterest Job Advertisements",
    "job_id": 99305,
    "salary_year_avg": "232423.0",
    "skills": "python"
  },
  {
    "company_name": "Pinterest Job Advertisements",
    "job_id": 99305,
    "salary_year_avg": "232423.0",
    "skills": "r"
  },
  {
    "company_name": "Pinterest Job Advertisements",
    "job_id": 99305,
    "salary_year_avg": "232423.0",
    "skills": "hadoop"
  },
  {
    "company_name": "Pinterest Job Advertisements",
    "job_id": 99305,
    "salary_year_avg": "232423.0",
    "skills": "tableau"
  },
  {
    "company_name": "Uclahealthcareers",
    "job_id": 1021647,
    "salary_year_avg": "217000.0",
    "skills": "sql"
  },
  {
    "company_name": "Uclahealthcareers",
    "job_id": 1021647,
    "salary_year_avg": "217000.0",
    "skills": "crystal"
  },
  {
    "company_name": "Uclahealthcareers",
    "job_id": 1021647,
    "salary_year_avg": "217000.0",
    "skills": "oracle"
  },
  {
    "company_name": "Uclahealthcareers",
    "job_id": 1021647,
    "salary_year_avg": "217000.0",
    "skills": "tableau"
  },
  {
    "company_name": "Uclahealthcareers",
    "job_id": 1021647,
    "salary_year_avg": "217000.0",
    "skills": "flow"
  },
  {
    "company_name": "SmartAsset",
    "job_id": 168310,
    "salary_year_avg": "205000.0",
    "skills": "sql"
  },
  {
    "company_name": "SmartAsset",
    "job_id": 168310,
    "salary_year_avg": "205000.0",
    "skills": "python"
  },
  {
    "company_name": "SmartAsset",
    "job_id": 168310,
    "salary_year_avg": "205000.0",
    "skills": "go"
  },
  {
    "company_name": "SmartAsset",
    "job_id": 168310,
    "salary_year_avg": "205000.0",
    "skills": "snowflake"
  },
  {
    "company_name": "SmartAsset",
    "job_id": 168310,
    "salary_year_avg": "205000.0",
    "skills": "pandas"
  },
  {
    "company_name": "SmartAsset",
    "job_id": 168310,
    "salary_year_avg": "205000.0",
    "skills": "numpy"
  },
  {
    "company_name": "SmartAsset",
    "job_id": 168310,
    "salary_year_avg": "205000.0",
    "skills": "excel"
  },
  {
    "company_name": "SmartAsset",
    "job_id": 168310,
    "salary_year_avg": "205000.0",
    "skills": "tableau"
  },
  {
    "company_name": "SmartAsset",
    "job_id": 168310,
    "salary_year_avg": "205000.0",
    "skills": "gitlab"
  },
  {
    "company_name": "Inclusively",
    "job_id": 731368,
    "salary_year_avg": "189309.0",
    "skills": "sql"
  },
  {
    "company_name": "Inclusively",
    "job_id": 731368,
    "salary_year_avg": "189309.0",
    "skills": "python"
  },
  {
    "company_name": "Inclusively",
    "job_id": 731368,
    "salary_year_avg": "189309.0",
    "skills": "azure"
  },
  {
    "company_name": "Inclusively",
    "job_id": 731368,
    "salary_year_avg": "189309.0",
    "skills": "aws"
  },
  {
    "company_name": "Inclusively",
    "job_id": 731368,
    "salary_year_avg": "189309.0",
    "skills": "oracle"
  },
  {
    "company_name": "Inclusively",
    "job_id": 731368,
    "salary_year_avg": "189309.0",
    "skills": "snowflake"
  },
  {
    "company_name": "Inclusively",
    "job_id": 731368,
    "salary_year_avg": "189309.0",
    "skills": "tableau"
  },
  {
    "company_name": "Inclusively",
    "job_id": 731368,
    "salary_year_avg": "189309.0",
    "skills": "power bi"
  },
  {
    "company_name": "Inclusively",
    "job_id": 731368,
    "salary_year_avg": "189309.0",
    "skills": "sap"
  },
  {
    "company_name": "Inclusively",
    "job_id": 731368,
    "salary_year_avg": "189309.0",
    "skills": "jenkins"
  },
  {
    "company_name": "Inclusively",
    "job_id": 731368,
    "salary_year_avg": "189309.0",
    "skills": "bitbucket"
  },
  {
    "company_name": "Inclusively",
    "job_id": 731368,
    "salary_year_avg": "189309.0",
    "skills": "atlassian"
  },
  {
    "company_name": "Inclusively",
    "job_id": 731368,
    "salary_year_avg": "189309.0",
    "skills": "jira"
  },
  {
    "company_name": "Inclusively",
    "job_id": 731368,
    "salary_year_avg": "189309.0",
    "skills": "confluence"
  },
  {
    "company_name": "Motional",
    "job_id": 310660,
    "salary_year_avg": "189000.0",
    "skills": "sql"
  },
  {
    "company_name": "Motional",
    "job_id": 310660,
    "salary_year_avg": "189000.0",
    "skills": "python"
  },
  {
    "company_name": "Motional",
    "job_id": 310660,
    "salary_year_avg": "189000.0",
    "skills": "r"
  },
  {
    "company_name": "Motional",
    "job_id": 310660,
    "salary_year_avg": "189000.0",
    "skills": "git"
  },
  {
    "company_name": "Motional",
    "job_id": 310660,
    "salary_year_avg": "189000.0",
    "skills": "bitbucket"
  },
  {
    "company_name": "Motional",
    "job_id": 310660,
    "salary_year_avg": "189000.0",
    "skills": "atlassian"
  },
  {
    "company_name": "Motional",
    "job_id": 310660,
    "salary_year_avg": "189000.0",
    "skills": "jira"
  },
  {
    "company_name": "Motional",
    "job_id": 310660,
    "salary_year_avg": "189000.0",
    "skills": "confluence"
  },
  {
    "company_name": "SmartAsset",
    "job_id": 1749593,
    "salary_year_avg": "186000.0",
    "skills": "sql"
  },
  {
    "company_name": "SmartAsset",
    "job_id": 1749593,
    "salary_year_avg": "186000.0",
    "skills": "python"
  },
  {
    "company_name": "SmartAsset",
    "job_id": 1749593,
    "salary_year_avg": "186000.0",
    "skills": "go"
  },
  {
    "company_name": "SmartAsset",
    "job_id": 1749593,
    "salary_year_avg": "186000.0",
    "skills": "snowflake"
  },
  {
    "company_name": "SmartAsset",
    "job_id": 1749593,
    "salary_year_avg": "186000.0",
    "skills": "pandas"
  },
  {
    "company_name": "SmartAsset",
    "job_id": 1749593,
    "salary_year_avg": "186000.0",
    "skills": "numpy"
  },
  {
    "company_name": "SmartAsset",
    "job_id": 1749593,
    "salary_year_avg": "186000.0",
    "skills": "excel"
  },
  {
    "company_name": "SmartAsset",
    "job_id": 1749593,
    "salary_year_avg": "186000.0",
    "skills": "tableau"
  },
  {
    "company_name": "SmartAsset",
    "job_id": 1749593,
    "salary_year_avg": "186000.0",
    "skills": "gitlab"
  },
  {
    "company_name": "Get It Recruit - Information Technology",
    "job_id": 387860,
    "salary_year_avg": "184000.0",
    "skills": "sql"
  },
  {
    "company_name": "Get It Recruit - Information Technology",
    "job_id": 387860,
    "salary_year_avg": "184000.0",
    "skills": "python"
  },
  {
    "company_name": "Get It Recruit - Information Technology",
    "job_id": 387860,
    "salary_year_avg": "184000.0",
    "skills": "r"
  }
]