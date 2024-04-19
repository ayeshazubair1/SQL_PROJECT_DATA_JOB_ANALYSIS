/*
Create three tables from other tables,
    Jan 2023 jobs
    Feb 2023 jobs
    Mar 2023 jobs
*/

-- January
CREATE TABLE january_jobs AS
    SELECT * FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1;

-- February
CREATE TABLE february_jobs AS
    SELECT * FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) =2;

-- March
CREATE TABLE march_jobs AS
    SELECT * FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 3;

SELECT * FROM january_jobs
LIMIT 100;

