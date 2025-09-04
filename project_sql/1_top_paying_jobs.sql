/* Question: What are the top 5 highest paying job titles? 
- Identify the top 10 highest paing data analyst roles that are available 
remotely.
- Focuses on job postigs with specified saleries (remove nulls).
- Why? Highlight the top-paying opportunities for data analysts in the job market, offering insights 
into employment
*/

SELECT 
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM
    job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE 
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10

