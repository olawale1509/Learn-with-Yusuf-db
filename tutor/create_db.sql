create schema personnel_mgt;

-- permanent set up for a particular schema
alter role postgres
set search_path to personnel_mgt;

select * FROM
company_dim cd
LEFT JOIN job_postings_fact jp
on cd.company_id= jp.company_id
LEFT JOIN skills_job_dim sj
ON jp.job_id=sj.job_id
LEFT JOIN skills_dim sd
ON sj.skill_id=sd.skill_id
LIMIT 10
;

CREATE TABLE company_dim
(
    company_id INT PRIMARY KEY,
    name TEXT,
    link TEXT,
    link_google TEXT,
    thumbnail TEXT
);

CREATE TABLE skills_dim
(
    skill_id INT PRIMARY KEY,
    skills TEXT,
    type TEXT
);

CREATE TABLE job_postings_fact
(
    job_id INT PRIMARY KEY,
    company_id INT,
    job_title_short VARCHAR(255),
    job_title TEXT,
    job_location TEXT,
    job_via TEXT,
    job_schedule_type TEXT,
    job_work_from_home BOOLEAN,
    search_location TEXT,
    job_posted_date TIMESTAMP,
    job_no_degree_mention BOOLEAN,
    job_health_insurance BOOLEAN,
    job_country TEXT,
    salary_rate TEXT,
    salary_year_avg NUMERIC,
    salary_hour_avg NUMERIC,
    FOREIGN KEY (company_id) REFERENCES company_dim (company_id)
);


CREATE TABLE skills_job_dim
(
    job_id INT,
    skill_id INT,
    PRIMARY KEY (job_id, skill_id),
    FOREIGN KEY (job_id) REFERENCES job_postings_fact (job_id),
    FOREIGN KEY (skill_id) REFERENCES skills_dim (skill_id)
);

copy company_dim
from 'C:\\csv_files\\company_dim.csv'
with(format csv, delimiter ',',header true)

copy job_postings_fact
from 'C:\\csv_files\\job_postings_fact.csv'
with(format csv, delimiter ',',header true)

copy skills_dim
from 'C:\\csv_files\\skills_dim.csv'
with(format csv, delimiter ',',header true);

copy skills_job_dim
from 'C:\\csv_files\\skills_job_dim.csv'
with(format csv, delimiter ',',header true);


SELECT * FROM company_dim limit 1000;SELECT * FROM skills_dim limit 1000;SELECT * FROM skills_job_dim limit 1000;SELECT * FROM job_postings_fact limit 1000;