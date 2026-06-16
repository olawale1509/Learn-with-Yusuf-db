# Introduction

Wer are checking into data analyst out in this project_sql()

# Background

1. Whaat we want to know is the top paying data analyst jobs?
2. What skills are required for these top-paying jobs?
3. What skills are mostly demanded for data analysts?
4. What skills are related with higher salaries?

# Tools used

- MySQL

- Postgres

- Visual Code Studio

# The Analysis

### 1. Top paying data analyst jobs

I want to select top 10 high paying data analyst companies that
that allows the workers remote working opportunity,we won't even give room for no salary companies, and we rank from highest to lowest .

```SQL
SELECT jp.company_id,
    cd.name as company_name,
    job_id,
    job_title,
    job_location,
    salary_year_avg
FROM job_postings_fact jp
    left join company_dim cd ON cd.company_id = jp.company_id
where job_title_short = 'Data Analyst'
    and job_location = 'Anywhere'
    and salary_year_avg is NOT NULL
order by salary_year_avg desc
limit 10;
```

# Here is the breakdown of the top data analyst jobs

- **Company paying more** Mantys is an outlier with its $650k analyst role possibly due to equity, bonuses, or niche expertise requirements.

- **Industry dominace:** Healthcare and tech dominate the high-paying remote analyst market.

- **Career progression matters:** Moving from analyst → principal → director can more than double compensation.

- **Remote Flexibility:** Remote flexibility is now standard for top-paying analyst jobs.

![Top Paying roles](project_sql\assets\top_paying_jobs.png)
This image is actually made from CoPilot.

### 2. Top Paying Skills for Data Analysts

We want to determine the top paying skills for data analysts

```SQL
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
SELECT
  c.name,
  np.job_title,
  np.skills,
  ROUND(AVG(np.salary_year_avg),0) AS Average_Salary
FROM company_dim c
LEFT JOIN new_pay_skill np ON c.company_id = np.company_id
WHERE np.skills IS NOT NULL
GROUP BY    c.name,
 np.job_title,
np.skills
ORDER BY Average_Salary DESC
LIMIT 25
;

```

# Insights

- SQL and Tableau are the most frequently appearing skills they’re foundational for data querying and visualization across industries.

- Python and R remain essential programming languages for analytics and modeling.

- Pandas bridges programming and data manipulation, showing up in both tech and finance roles.

- Cloud and Big Data tools (AWS, Azure, Databricks, PySpark) appear primarily in AT&T’s high-paying role, signaling that enterprise-scale data infrastructure expertise drives top-tier compensation.

- Visualization tools (Power BI, Tableau) are consistently valued, emphasizing the importance of storytelling with data.

- Legacy tools (Crystal, Oracle) still appear in healthcare analytics, reflecting hybrid tech environments.

| Skill          | Frequency | Common Companies      |
| -------------- | --------- | --------------------- |
| **SQL**        | 3         | AT&T, Pinterest, UCLA |
| **Tableau**    | 3         | AT&T, Pinterest, UCLA |
| **Python**     | 2         | AT&T, Pinterest       |
| **R**          | 2         | AT&T, Pinterest       |
| **Pandas**     | 2         | AT&T, SmartAsset      |
| **AWS**        | 1         | AT&T                  |
| **Azure**      | 1         | AT&T                  |
| **Databricks** | 1         | AT&T                  |
| **PySpark**    | 1         | AT&T                  |
| **Power BI**   | 1         | AT&T                  |
| **Excel**      | 1         | AT&T                  |
| **Jupyter**    | 1         | AT&T                  |
| **PowerPoint** | 1         | AT&T                  |
| **Hadoop**     | 1         | Pinterest             |
| **Crystal**    | 1         | UCLA                  |
| **Flow**       | 1         | UCLA                  |
| **Oracle**     | 1         | UCLA                  |
| **NumPy**      | 1         | SmartAsset            |

![Top Paying Skill](project_sql\assets\top_paying_skill.png)

### 3. Top Demanded Jobs

Top demanded skills and let staff work from home

```SQL
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
```

| Rank | Skill                                                                                       | Demand Level                                                     |
| ---- | ------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- |
| 1️⃣   | **SQL**                                                                                     | Extremely high — core requirement for nearly all analyst roles   |
| 2️⃣   | **Excel**                                                                                   | Still dominant for data cleaning, reporting, and quick analysis  |
| 3️⃣   | **Python**                                                                                  | Essential for automation, data modeling, and analytics scripting |
| 4️⃣   | **Tableau**                                                                                 | Key visualization tool for dashboards and storytelling           |
| 5️⃣   | **R**                                                                                       | Popular for statistical analysis and academic data work          |
| 6️⃣   | **SAS**                                                                                     | Common in finance, healthcare, and government analytics          |
| 7️⃣   | **Power BI**                                                                                | Microsoft’s visualization tool gaining strong traction           |
| 8️⃣   | **PowerPoint**                                                                              | Needed for presenting insights effectively                       |
| 9️⃣   | **Looker**                                                                                  | Modern BI tool used in tech and marketing analytics              |
| 🔟   | **Word / Sheets / Flow / Go / SPSS / VBA / Hadoop / JavaScript / Jira / SharePoint / Java** | Specialized or supporting tools depending on industry context    |

# Insights

- SQL remains the undisputed foundation — every Data Analyst needs it.

- Excel continues to be indispensable for quick data manipulation and reporting.

- Python and R are the go‑to languages for advanced analytics and automation.

- Visualization tools (Tableau, Power BI, Looker) are critical for communicating insights.

- Cloud and database tools (Snowflake, Oracle, Azure, AWS) show the growing importance of scalable data environments.

- Workflow and collaboration tools (Jira, SharePoint, Flow) highlight the need for cross‑functional teamwork.

![Top Demanded Skill](project_sql\assets\top_demanded_skill.png)

### 4. Optimum Skill

```SQL
-- Optimum Skill
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
```

# Insights from the Chart

**High Demand, Moderate Salary**

SQL, Excel, Tableau dominate in job postings, making them essential for employability.

Their salaries are solid but not the highest, reflecting their ubiquity.

**Balanced Demand and Salary**

Python, R, Power BI sit in the middle — widely used and offering competitive pay.

These are excellent “core” skills to master after SQL/Excel.

**High Salary, Moderate Demand**

AWS, Snowflake, Hadoop, Azure, Go stand out in the upper quadrant — fewer postings but premium pay.

These are advanced skills that unlock higher-paying enterprise roles.

**Lower Salary, Moderate Demand**

Tools like PowerPoint, SPSS, SSRS appear often but don’t command high salaries.

They’re useful for communication and reporting but not career-defining.

![Optimum Skill](project_sql\assets\optimum_skill_and_salary.png)

# What I Learned

# Conclusions
