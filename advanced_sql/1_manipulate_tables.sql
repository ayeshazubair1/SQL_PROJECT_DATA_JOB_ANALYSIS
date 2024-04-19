/*
Following statements are used to manipulate tables:
    Create table,
    INSERT INTO: add columns (data) to your tables,
    ALTER TABLE,
    ADD: add columns,
    RENAME COLUMN,
    ALTER COLUMN: change the data type of a column,
    DROP COLUMN: delete a column,
    DROP TABLE: delete a table
*/

CREATE TABLE job_applied(
    job_id INT,
    application_sent_date DATE,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR(255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR(255),
    status VARCHAR(50)
    );

SELECT * FROM job_applied;

INSERT INTO job_applied(
    job_id,
    application_sent_date,
    custom_resume,
    resume_file_name,
    cover_letter_sent,
    cover_letter_file_name,
    status)
    
    VALUES
    (1, '2024-03-01', true, 'resume_01.pdf', true, 'cover_letter_01.pdf', 'submitted'),
    (2, '2024-03-02', false, 'resume_02.pdf', false, NULL, 'interview_scheduled'),
    (3, '2024_03-02', true, 'resume_03.pdf', true, 'cover_letter_03.pdf', 'ghosted'),
    (4, '2024-03-04', true, 'resume_04.pdf', false, NULL, 'submitted'),
    (5, '2024-03-05', false, 'resume_05.pdf', true, 'cover_letter_05.pdf', 'rejected'),
    (6, '2024-03-06', true, 'resume_06.pdf', true, NULL, 'interview_scheduled'),
    (7, '2024-03-07', false, 'resume_07.pdf', true, 'cover_letter_07.pdf', 'ghosted'),
    (8, '2024-03-08', false, 'resume_08.pdf', false, 'cover_letter_08.pdf', 'rejected'),
    (9, '2024-03-09', true, 'resume_09.pdf', false, NULL, 'submitted'),
    (10, '2024-03-10', false, 'resume_10.pdf', true, 'cover_letter_10.pdf', 'interview_scheduled')
    ;

    ALTER TABLE job_applied
    ADD contact VARCHAR(50);

    UPDATE job_applied
    SET contact = 'Bakel'
    WHERE job_id = 1;

    UPDATE job_applied
    SET contact = 'Casey'
    WHERE job_id = 2;

    UPDATE job_applied
    SET contact = 'Rosie'
    WHERE job_id = 3;

    UPDATE job_applied
    SET contact = 'Whimsy'
    WHERE job_id = 4;

    UPDATE job_applied
    SET contact = 'Aren'
    WHERE job_id = 5;

    UPDATE job_applied
    SET contact = 'Sezer'
    WHERE job_id = 6;

    UPDATE job_applied
    SET contact = 'Karen'
    WHERE job_id = 7;

    UPDATE job_applied
    SET contact = 'Harry'
    WHERE job_id = 8;

    UPDATE job_applied
    SET contact = 'Fredie'
    WHERE job_id = 9;

    UPDATE job_applied
    SET contact = 'Erick'
    WHERE job_id = 10;

    ALTER TABLE job_applied
    RENAME COLUMN contact TO contact_name;

    ALTER TABLE job_applied
    ALTER COLUMN contact_name TYPE TEXT;

    SELECT * FROM job_applied;

    ALTER TABLE job_applied
    DROP COLUMN contact_name;

    DROP TABLE job_applied;

