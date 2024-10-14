/*
Question: What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Science positions
- Focuses on roles with specified salaries, regardless of location as well as India
- Why? It reveals how different skills impact salary levels for Data Science positions and 
    helps identify the most financially rewarding skills to acquire or improve
*/

SELECT
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM
    job_postings_fact
INNER JOIN skills_job_dim ON
    job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON
    skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short LIKE '%Data Scien%' AND
    salary_year_avg IS NOT NULL
GROUP BY
    skills    
ORDER BY
    avg_salary DESC 
LIMIT 30;

-------------------------------------------------------------

SELECT
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM
    job_postings_fact
INNER JOIN skills_job_dim ON
    job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON
    skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short LIKE '%Data Scien%' AND
    job_country = 'India' AND
    salary_year_avg IS NOT NULL
GROUP BY
    skills    
ORDER BY
    avg_salary DESC 
LIMIT 30;

------------------------------------------------------------------------------------------------------------------------

/*
Summary of Trends Globally:-
1) High-paying jobs are not just about traditional data science skills but increasingly about
   specialized frameworks, tools, and cloud platforms.

2) Project management, collaboration, and workflow tools like Asana and Airtable have
   emerged as essential, especially with the rise of remote work.

3) Niche programming languages and specialized cloud databases (e.g., Neo4j, DynamoDB)
   command premium salaries, reflecting the need for expertise in specific technical areas.

4) AI and machine learning frameworks are crucial, with frameworks like PyTorch, Theano, and
   Watson offering some of the highest-paying opportunities in the field.

Professionals with proficiency in these skills are highly sought after and compensated accordingly,
reflecting the dynamic and evolving needs of the global data science industry.
*/

------------------------------------------------------------------------------------------------------------------------

/*
Summary of Trends in India:-
1) Full-stack development and automation testing frameworks are highly valued,
   showing the growing integration of data science with web development and software testing.

2) Data analytics and BI tools (e.g., Cognos, DAX, Looker) reflect the increasing need for skilled
   professionals who can generate insights from data and visualize it for decision-makers.

3) Cloud data warehousing tools like Snowflake and strong SQL skills are critical for handling
   large-scale datasets in cloud environments.

4) AI, machine learning, and NLP tools continue to be crucial, with skills in frameworks like
   PyTorch, Scikit-learn, and NLTK ranking high in terms of salary.

5) MLOps and DevOps skills are rising, with demand for professionals who can deploy machine learning
   models at scale using tools like Docker, Kubernetes, and GitLab.

These trends show that companies in India are investing in professionals with specialized skills in
both traditional and emerging data science technologies.
*/

------------------------------------------------------------------------------------------------------------------------

-- Final Take Aways
-- 1) Higher Valuation of Niche Tools Globally (Asana, Airtable, and Neo4j)
-- 2) Cloud Technologies Demand in Both Regions (AWS, Azure, and Snowflake)
-- 3) Machine Learning and AI Frameworks are Key in Both Markets (PyTorch, Scikit-learn, and TensorFlow)
-- 4) Emphasis on DevOps & MLOps in India (GitLab, Kubernetes, and Docker)
-- 5) Global Market Pays Premium for Collaboration and Productivity Tools (Slack, Notion, and Zoom)