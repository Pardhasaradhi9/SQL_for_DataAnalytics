/*
Question: What are the top-paying Data Science jobs?
- Identify the top 10 highest-paying Data Science roles that are available in Andhra Pradesh, Karnataka, Telangana
- Focuses on job postings with specified salaries (remove nulls)
- BONUS: Include company names of top 10 roles
- Why? Highlight the top-paying opportunities for Data Science, offering insights into employment options and location flexibility.
*/

-- Finding total jobs from India
SELECT COUNT(*)
FROM
    job_postings_fact
WHERE
    job_location LIKE '%India'; -- 44967 jobs are from India

-------------------------------------------------------------------------
-- Getting to Know unique locations of the job postings
SELECT DISTINCT(job_location)
FROM
    job_postings_fact
WHERE
    job_location LIKE '%India'
GROUP BY
    job_location  
ORDER BY
     job_location; -- 473 unique locations

-------------------------------------------------------------------------
-- Solving the Question
SELECT
    job_id,
    name AS company_name,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
    
FROM
    job_postings_fact
LEFT JOIN company_dim
    ON job_postings_fact.company_id = company_dim.company_id
WHERE
    (job_title_short LIKE '%Data Scien%' OR
    job_title_short LIKE '%Data Analy%') AND
    (job_location LIKE '%Andhra Pradesh%' OR
    job_location LIKE '%Telangana%' OR
    job_location LIKE 'Karnataka') AND
    salary_year_avg IS NOT NULL
ORDER BY 
    salary_year_avg DESC -- 30 jobs from my desired location
LIMIT 10;

 
  


