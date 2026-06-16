WITH avs_sal as(
select 
round(avg(salary_year_avg), 0) salaries,sd.skill_id
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
sd.skill_id,sd.skills
from job_postings_fact pj
    inner JOIN skills_job_dim sj on sj.job_id = pj.job_id
    join skills_dim sd on sd.skill_id = sj.skill_id
where job_title_short = 'Data Analyst'
    and salary_year_avg is not null
    and job_work_from_home = TRUE
group by sd.skill_id
order by demanded_job desc
)
select 
d.skill_id,
d.demanded_job as jobs_needed,
d.skills as Skill,
a.salaries year_salary
from avs_sal a
join demand_job d
on a.skill_id=d.skill_id
ORDER BY d.skill_id DESC
;