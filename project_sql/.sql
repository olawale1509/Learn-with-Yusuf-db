select round(avg(salary_year_avg),0)salaries,
skills as the_skill
from job_postings_fact jp
INNER JOIN skills_job_dim sj ON jp.job_id= sj.job_id
INNER JOIN skills_dim sd ON sj.skill_id= sd.skill_id
where salary_year_avg is not NULL
and job_title_short= 'Data Analyst'
and job_work_from_home is true
group by the_skill
ORDER BY salaries desc
limit 25;




[
  {
    "salaries": "208172",
    "the_skill": "pyspark"
  },
  {
    "salaries": "189155",
    "the_skill": "bitbucket"
  },
  {
    "salaries": "160515",
    "the_skill": "couchbase"
  },
  {
    "salaries": "160515",
    "the_skill": "watson"
  },
  {
    "salaries": "155486",
    "the_skill": "datarobot"
  },
  {
    "salaries": "154500",
    "the_skill": "gitlab"
  },
  {
    "salaries": "153750",
    "the_skill": "swift"
  },
  {
    "salaries": "152777",
    "the_skill": "jupyter"
  },
  {
    "salaries": "151821",
    "the_skill": "pandas"
  },
  {
    "salaries": "145000",
    "the_skill": "elasticsearch"
  },
  {
    "salaries": "145000",
    "the_skill": "golang"
  },
  {
    "salaries": "143513",
    "the_skill": "numpy"
  },
  {
    "salaries": "141907",
    "the_skill": "databricks"
  },
  {
    "salaries": "136508",
    "the_skill": "linux"
  },
  {
    "salaries": "132500",
    "the_skill": "kubernetes"
  },
  {
    "salaries": "131162",
    "the_skill": "atlassian"
  },
  {
    "salaries": "127000",
    "the_skill": "twilio"
  },
  {
    "salaries": "126103",
    "the_skill": "airflow"
  },
  {
    "salaries": "125781",
    "the_skill": "scikit-learn"
  },
  {
    "salaries": "125436",
    "the_skill": "jenkins"
  },
  {
    "salaries": "125000",
    "the_skill": "notion"
  },
  {
    "salaries": "124903",
    "the_skill": "scala"
  },
  {
    "salaries": "123879",
    "the_skill": "postgresql"
  },
  {
    "salaries": "122500",
    "the_skill": "gcp"
  },
  {
    "salaries": "121619",
    "the_skill": "microstrategy"
  }
]



AI/ML and data science: Tools like PySpark, Pandas, NumPy, Scikit‑learn, and Jupyter show strong demand for analysts who can handle big data and machine learning workflows.

Cloud and infrastructure: Kubernetes, GCP, Databricks, and Airflow highlight the premium on analysts who can manage scalable data pipelines and cloud environments.

Collaboration and niche platforms: Skills like Bitbucket, GitLab, Atlassian, and Notion reflect the value of analysts who integrate smoothly into modern team workflows and specialized ecosystems.