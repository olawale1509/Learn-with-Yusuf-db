/*
 want to select top 20 high paying data analyst companies that 
 that allows the workers remote working opportunity,  we won't even give room for no salary companies, and we rank from highest to lowest 
 */
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
limit 20;
[
  {
    "company_id": 319998,
    "company_name": "Mantys",
    "job_id": 226942,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "650000.0"
  },
  {
    "company_id": 21,
    "company_name": "Meta",
    "job_id": 547382,
    "job_title": "Director of Analytics",
    "job_location": "Anywhere",
    "salary_year_avg": "336500.0"
  },
  {
    "company_id": 5835,
    "company_name": "AT&T",
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5"
  },
  {
    "company_id": 183972,
    "company_name": "Pinterest Job Advertisements",
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "job_location": "Anywhere",
    "salary_year_avg": "232423.0"
  },
  {
    "company_id": 381287,
    "company_name": "Uclahealthcareers",
    "job_id": 1021647,
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_location": "Anywhere",
    "salary_year_avg": "217000.0"
  },
  {
    "company_id": 19724,
    "company_name": "SmartAsset",
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "job_location": "Anywhere",
    "salary_year_avg": "205000.0"
  },
  {
    "company_id": 1261,
    "company_name": "Inclusively",
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "job_location": "Anywhere",
    "salary_year_avg": "189309.0"
  },
  {
    "company_id": 4707,
    "company_name": "Motional",
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_location": "Anywhere",
    "salary_year_avg": "189000.0"
  },
  {
    "company_id": 19724,
    "company_name": "SmartAsset",
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "186000.0"
  },
  {
    "company_id": 2686,
    "company_name": "Get It Recruit - Information Technology",
    "job_id": 387860,
    "job_title": "ERM Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "184000.0"
  },
  {
    "company_id": 797,
    "company_name": "Robert Half",
    "job_id": 1781684,
    "job_title": "DTCC Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "170000.0"
  },
  {
    "company_id": 1121,
    "company_name": "A-Line Staffing Solutions",
    "job_id": 1352513,
    "job_title": "REMOTE Director of Data Analytics",
    "job_location": "Anywhere",
    "salary_year_avg": "170000.0"
  },
  {
    "company_id": 2603,
    "company_name": "Kelly Science, Engineering, Technology & Telecom",
    "job_id": 987523,
    "job_title": "Azure Data Python Consultant - contract to HIRE - Citizen or Perm...",
    "job_location": "Anywhere",
    "salary_year_avg": "170000.0"
  },
  {
    "company_id": 4175,
    "company_name": "Uber",
    "job_id": 1525451,
    "job_title": "Manager, Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "167000.0"
  },
  {
    "company_id": 7170,
    "company_name": "Plexus Resource Solutions",
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "165000.0"
  },
  {
    "company_id": 2686,
    "company_name": "Get It Recruit - Information Technology",
    "job_id": 712473,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "165000.0"
  },
  {
    "company_id": 216,
    "company_name": "Mayo Clinic",
    "job_id": 1423236,
    "job_title": "Principal Data Science Analyst- Remote",
    "job_location": "Anywhere",
    "salary_year_avg": "164746.0"
  },
  {
    "company_id": 216,
    "company_name": "Mayo Clinic",
    "job_id": 1799883,
    "job_title": "Principal Data Science Analyst- Remote",
    "job_location": "Anywhere",
    "salary_year_avg": "164746.0"
  },
  {
    "company_id": 60901,
    "company_name": "CEDARS-SINAI",
    "job_id": 618890,
    "job_title": "Principal Data Intelligence Analyst - Cardiac - Remote",
    "job_location": "Anywhere",
    "salary_year_avg": "163500.0"
  },
  {
    "company_id": 6480,
    "company_name": "DIRECTV",
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "160515.0"
  }
] ```
### My Insight is that
Mantys is an outlier with its $650k analyst role — possibly due to equity, bonuses, or niche expertise requirements.

Healthcare and tech dominate the high-paying remote analyst market.

Career progression matters: Moving from analyst → principal → director can more than double compensation.

Remote flexibility is now standard for top-paying analyst jobs.