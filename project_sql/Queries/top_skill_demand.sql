-- top demanded skills and let staff work from home 
select count(pj.job_id) as demanded_job,
    skills
from job_postings_fact pj
    inner JOIN skills_job_dim sj on sj.job_id = pj.job_id
    join skills_dim sd on sd.skill_id = sj.skill_id
where job_title_short = 'Data Analyst'
    and salary_year_avg is not null
    and job_work_from_home = TRUE
group by skills
order by demanded_job desc
limit 25;
[
  {
    "demanded_job": "398",
    "skills": "sql"
  },
  {
    "demanded_job": "256",
    "skills": "excel"
  },
  {
    "demanded_job": "236",
    "skills": "python"
  },
  {
    "demanded_job": "230",
    "skills": "tableau"
  },
  {
    "demanded_job": "148",
    "skills": "r"
  },
  {
    "demanded_job": "126",
    "skills": "sas"
  },
  {
    "demanded_job": "110",
    "skills": "power bi"
  },
  {
    "demanded_job": "58",
    "skills": "powerpoint"
  },
  {
    "demanded_job": "49",
    "skills": "looker"
  },
  {
    "demanded_job": "48",
    "skills": "word"
  },
  {
    "demanded_job": "37",
    "skills": "snowflake"
  },
  {
    "demanded_job": "37",
    "skills": "oracle"
  },
  {
    "demanded_job": "35",
    "skills": "sql server"
  },
  {
    "demanded_job": "34",
    "skills": "azure"
  },
  {
    "demanded_job": "32",
    "skills": "sheets"
  },
  {
    "demanded_job": "32",
    "skills": "aws"
  },
  {
    "demanded_job": "28",
    "skills": "flow"
  },
  {
    "demanded_job": "27",
    "skills": "go"
  },
  {
    "demanded_job": "24",
    "skills": "spss"
  },
  {
    "demanded_job": "24",
    "skills": "vba"
  },
  {
    "demanded_job": "22",
    "skills": "hadoop"
  },
  {
    "demanded_job": "20",
    "skills": "javascript"
  },
  {
    "demanded_job": "20",
    "skills": "jira"
  },
  {
    "demanded_job": "18",
    "skills": "sharepoint"
  },
  {
    "demanded_job": "17",
    "skills": "java"
  }
]