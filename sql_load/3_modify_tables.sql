/* 

\copy company_dim FROM '/Users/pardhasaradhichukka/Desktop/Project/SQL_for_DataAnalytics/csv_files/company_dim.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

\copy skills_dim FROM '/Users/pardhasaradhichukka/Desktop/Project/SQL_for_DataAnalytics/csv_files/skills_dim.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

\copy job_postings_fact FROM '/Users/pardhasaradhichukka/Desktop/Project/SQL_for_DataAnalytics/csv_files/job_postings_fact.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

\copy skills_job_dim FROM '/Users/pardhasaradhichukka/Desktop/Project/SQL_for_DataAnalytics/csv_files/skills_job_dim.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

*/


COPY company_dim
FROM '/Users/pardhasaradhichukka/Desktop/Project/SQL_for_DataAnalytics/csv_files/company_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_dim
FROM '/Users/pardhasaradhichukka/Desktop/Project/SQL_for_DataAnalytics/csv_files/skills_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY job_postings_fact
FROM '/Users/pardhasaradhichukka/Desktop/Project/SQL_for_DataAnalytics/csv_files/job_postings_fact.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_job_dim
FROM '/Users/pardhasaradhichukka/Desktop/Project/SQL_for_DataAnalytics/csv_files/skills_job_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');


-- SELECT * FROM company_dim
-- LIMIT 100;