WITH avs_sal as(
    select round(avg(salary_year_avg), 0) salaries,
        sd.skill_id
    from job_postings_fact jp
        INNER JOIN skills_job_dim sj ON jp.job_id = sj.job_id
        INNER JOIN skills_dim sd ON sj.skill_id = sd.skill_id
    where salary_year_avg is not NULL
        and job_title_short = 'Data Analyst'
        and job_work_from_home is true
    group by sd.skill_id
    ORDER BY salaries desc
),
-- top demanded skills
demand_job as(
    select count(pj.job_id) as demanded_job,
        sd.skill_id,
        sd.skills
    from job_postings_fact pj
        inner JOIN skills_job_dim sj on sj.job_id = pj.job_id
        join skills_dim sd on sd.skill_id = sj.skill_id
    where job_title_short = 'Data Analyst'
        and salary_year_avg is not null
        and job_work_from_home = TRUE
    group by sd.skill_id
    order by demanded_job desc
)
select d.skill_id,
    d.demanded_job as jobs_needed,
    d.skills as Skill,
    a.salaries year_salary
from avs_sal a
    join demand_job d on a.skill_id = d.skill_id
where d.demanded_job > 10
ORDER BY d.skill_id DESC;
[
  {
    "skill_id": 234,
    "jobs_needed": "11",
    "skill": "confluence",
    "year_salary": "114210"
  },
  {
    "skill_id": 233,
    "jobs_needed": "20",
    "skill": "jira",
    "year_salary": "104918"
  },
  {
    "skill_id": 215,
    "jobs_needed": "28",
    "skill": "flow",
    "year_salary": "97200"
  },
  {
    "skill_id": 201,
    "jobs_needed": "17",
    "skill": "alteryx",
    "year_salary": "94145"
  },
  {
    "skill_id": 199,
    "jobs_needed": "24",
    "skill": "spss",
    "year_salary": "92170"
  },
  {
    "skill_id": 198,
    "jobs_needed": "13",
    "skill": "outlook",
    "year_salary": "90077"
  },
  {
    "skill_id": 197,
    "jobs_needed": "14",
    "skill": "ssrs",
    "year_salary": "99171"
  },
  {
    "skill_id": 196,
    "jobs_needed": "58",
    "skill": "powerpoint",
    "year_salary": "88701"
  },
  {
    "skill_id": 195,
    "jobs_needed": "18",
    "skill": "sharepoint",
    "year_salary": "81634"
  },
  {
    "skill_id": 194,
    "jobs_needed": "12",
    "skill": "ssis",
    "year_salary": "106683"
  },
  {
    "skill_id": 192,
    "jobs_needed": "32",
    "skill": "sheets",
    "year_salary": "86088"
  },
  {
    "skill_id": 188,
    "jobs_needed": "48",
    "skill": "word",
    "year_salary": "82576"
  },
  {
    "skill_id": 187,
    "jobs_needed": "13",
    "skill": "qlik",
    "year_salary": "99631"
  },
  {
    "skill_id": 186,
    "jobs_needed": "63",
    "skill": "sas",
    "year_salary": "98902"
  },
  {
    "skill_id": 185,
    "jobs_needed": "49",
    "skill": "looker",
    "year_salary": "103795"
  },
  {
    "skill_id": 183,
    "jobs_needed": "110",
    "skill": "power bi",
    "year_salary": "97431"
  },
  {
    "skill_id": 182,
    "jobs_needed": "230",
    "skill": "tableau",
    "year_salary": "99288"
  },
  {
    "skill_id": 181,
    "jobs_needed": "256",
    "skill": "excel",
    "year_salary": "87288"
  },
  {
    "skill_id": 97,
    "jobs_needed": "22",
    "skill": "hadoop",
    "year_salary": "113193"
  },
  {
    "skill_id": 92,
    "jobs_needed": "13",
    "skill": "spark",
    "year_salary": "99077"
  },
  {
    "skill_id": 80,
    "jobs_needed": "37",
    "skill": "snowflake",
    "year_salary": "112948"
  },
  {
    "skill_id": 79,
    "jobs_needed": "37",
    "skill": "oracle",
    "year_salary": "104534"
  },
  {
    "skill_id": 78,
    "jobs_needed": "16",
    "skill": "redshift",
    "year_salary": "99936"
  },
  {
    "skill_id": 77,
    "jobs_needed": "13",
    "skill": "bigquery",
    "year_salary": "109654"
  },
  {
    "skill_id": 76,
    "jobs_needed": "32",
    "skill": "aws",
    "year_salary": "108317"
  },
  {
    "skill_id": 74,
    "jobs_needed": "34",
    "skill": "azure",
    "year_salary": "111225"
  },
  {
    "skill_id": 61,
    "jobs_needed": "35",
    "skill": "sql server",
    "year_salary": "97786"
  },
  {
    "skill_id": 22,
    "jobs_needed": "24",
    "skill": "vba",
    "year_salary": "88783"
  },
  {
    "skill_id": 13,
    "jobs_needed": "11",
    "skill": "c++",
    "year_salary": "98958"
  },
  {
    "skill_id": 9,
    "jobs_needed": "20",
    "skill": "javascript",
    "year_salary": "97587"
  },
  {
    "skill_id": 8,
    "jobs_needed": "27",
    "skill": "go",
    "year_salary": "115320"
  },
  {
    "skill_id": 7,
    "jobs_needed": "63",
    "skill": "sas",
    "year_salary": "98902"
  },
  {
    "skill_id": 5,
    "jobs_needed": "148",
    "skill": "r",
    "year_salary": "100499"
  },
  {
    "skill_id": 4,
    "jobs_needed": "17",
    "skill": "java",
    "year_salary": "106906"
  },
  {
    "skill_id": 2,
    "jobs_needed": "13",
    "skill": "nosql",
    "year_salary": "101414"
  },
  {
    "skill_id": 1,
    "jobs_needed": "236",
    "skill": "python",
    "year_salary": "101397"
  },
  {
    "skill_id": 0,
    "jobs_needed": "398",
    "skill": "sql",
    "year_salary": "97237"
  }
]