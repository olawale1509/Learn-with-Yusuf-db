-- top demanded skills
select 
count(pj.job_id) as demanded_job,
skills
from job_postings_fact pj
inner JOIN skills_job_dim sj
on sj.job_id = pj.job_id
join skills_dim sd
on sd.skill_id=sj.skill_id
where job_title_short = 'Data Analyst'
and salary_year_avg is not null
and job_work_from_home = TRUE
group by skills
order by demanded_job desc
limit 25;
