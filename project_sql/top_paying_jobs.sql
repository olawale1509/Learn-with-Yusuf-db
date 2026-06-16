/*
want to select top 10 high paying data analyst companies that 
that allows the workers remote working oppotunity,  we won't even give room for no salary companies, and we rank from highest to lowest 
*/


SELECT
jp.company_id,cd.name as company_name, job_id, job_title,job_location,salary_year_avg
FROM job_postings_fact jp
left join company_dim cd 
ON cd.company_id=jp.company_id
where job_title_short = 'Data Analyst'
and job_location='Anywhere'
and salary_year_avg is NOT NULL
order by salary_year_avg desc
limit 10
;


select * FROM company_dim
 limit 100;


