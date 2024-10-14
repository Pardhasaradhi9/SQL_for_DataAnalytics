-- Now that we know top paying data science roles & companies, let's find
-- what are top skills that are the main drivers behind the salary range

/*
Question: What skills are required for the top-paying Data Science jobs jobs?
- Use the top 10 highest-paying Data Science jobs jobs from first problem
- Add the specific skills required for these roles
- Why? It provides a detailed look at which high-paying jobs demand certain skills, 
    helping job seekers understand which skills to develop that align with top salaries
*/

-------------------------------------------------------------------------
WITH top_paying_jobs AS (
    SELECT
        job_id,
        name AS company_name,
        job_title,
        job_schedule_type,
        salary_year_avg
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
    LIMIT 10
)
SELECT
    top_paying_jobs.*,
    skills_dim.skills
FROM
    top_paying_jobs
INNER JOIN skills_job_dim ON
    top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON
    skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC;



