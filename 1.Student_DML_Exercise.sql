USE cdg_hyd_jfs_058_2;

USE cdg_hyd_jfs_058;
CREATE TABLE students (
    student_id INT NOT NULL AUTO_INCREMENT ,
    admission_number VARCHAR(15) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(120) NOT NULL,
    phone VARCHAR(15),
    date_of_birth DATE NOT NULL,
    program_name VARCHAR(50) NOT NULL,
    admission_date DATE NOT NULL,
    cgpa DECIMAL(4, 2) NOT NULL,
    student_status VARCHAR(15) NOT NULL DEFAULT 'ACTIVE',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_student_id` PRIMARY KEY(student_id),
    CONSTRAINT `uq_admission_number` UNIQUE (admission_number),
    CONSTRAINT `uq_email` UNIQUE (email),
    CONSTRAINT `chk_cgpa` CHECK (cgpa BETWEEN 0.0 AND 10.0)
);

INSERT INTO students (admission_number, first_name, last_name, email,phone, date_of_birth, program_name, admission_date, cgpa) 
VALUES ('ADM001', 'ARAVIND', 'MALLAVARAPU', 'ARAVINDM@GMAIL.COM', '8688434995', '2004-05-24', 'ECE', '2023-07-13', 7.7);

INSERT INTO students (admission_number, first_name, last_name, email,phone, date_of_birth, program_name, admission_date, cgpa) 
VALUES ('ADM002', 'RAVI', 'PUDOTA', 'RAVITEJA@GMAIL.COM', '7997633711', '2005-06-26', 'CSE', '2023-07-14', 9.5);

SELECT * FROM Students;

DELETE FROM students
WHERE student_id = '1';

DELETE FROM students
WHERE student_id = '2';

DELETE FROM students
WHERE student_id = '3';

-- Date formate would be year-month-date

INSERT INTO students (admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa,student_status)
VALUES('STU26C001', 'Ananya', 'Rao', 'ananya.rao@example.test', '9876501001', '2007-04-18', 'BSc Computer Science', '2026-07-01', '8.40', 'ACTIVE');

INSERT INTO students (admission_number, first_name, last_name, email, date_of_birth, program_name, admission_date, cgpa,student_status)
VALUES('STU26C002', 'Vivaan', 'Sharma', 'vivaan.sharma@example.test', '2006-12-09', 'BCom', '2026-07-01', '7.75', 'ACTIVE');

INSERT INTO students
(admission_number, first_name, last_name, email, phone,
 date_of_birth, program_name, admission_date, cgpa, student_status)
VALUES
('STU26C003', 'Diya', 'Nair', 'diya.nair@example.test',
 '9876501003', '2007-02-25', 'BA Economics',
 '2026-07-02', 9.10, 'ACTIVE'),

('STU25C004', 'Kabir', 'Singh', 'kabir.singh@example.test',
 '9876501004', '2006-08-14', 'BSc Mathematics',
 '2025-07-01', 6.85, 'SUSPENDED'),

('STU24C005', 'Tara', 'Bose', 'tara.bose@example.test',
 '9876501005', '2005-09-30', 'BA History',
 '2024-07-01', 5.90, 'DROPPED');

INSERT INTO students (admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa,student_status)
VALUES('STU26C001', 'Ananya', 'Rao', 'ananya.rao@example.test', '9876501001', '2007-04-18', 'BSc Computer Science', '2026-07-01', '8.40', 'ACTIVE');

INSERT INTO students (admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa,student_status)
VALUES('STU26C001', 'Ananya', 'Rao', 'ananya.rao@example.test', '9876501001', '2007-04-18', 'BSc Computer Science', '2026-07-01', '10.40', 'ACTIVE');

UPDATE students
SET cgpa = 8.65
WHERE admission_number = 'STU26C001';

SELECT *
FROM students
WHERE admission_number = 'STU26C001';

UPDATE students
SET cgpa = LEAST(cgpa + 0.20, 10.00)

-- LEAST(value1, value2)

WHERE program_name = 'BSc Computer Science'
AND student_status = 'ACTIVE';

SELECT * FROM students
WHERE program_name = 'BSc Computer Science'
AND student_status = 'ACTIVE';

UPDATE students
SET student_status = 'ACTIVE'
WHERE admission_number = 'STU25C004';

SELECT * FROM students
WHERE admission_number = 'STU25C004';

UPDATE students
SET program_name = 'BCom Finance'
WHERE program_name = 'BCom';

SELECT * FROM students
WHERE program_name = 'BCom Finance';

UPDATE students
SET email = 'ananya.rao@example.test'
WHERE admission_number = 'STU26C003';

SELECT * FROM students
WHERE admission_number = 'STU26C003';

SELECT * FROM students;

SELECT *
FROM students
WHERE student_status = 'DROPPED';

DELETE FROM students
WHERE student_status = 'DROPPED';

SELECT *
FROM students
WHERE student_status = 'DROPPED';

SELECT *
FROM students;

-- inserting the temporary student

INSERT INTO students
(admission_number, first_name, last_name, email, phone,
 date_of_birth, program_name, admission_date, cgpa, student_status)
VALUES
('STU-TEMP-001', 'Temporary', 'Student',
 'temporary.student@example.test', '9876501099',
 '2007-01-01', 'BTech', '2026-07-01', 7.00, 'ACTIVE');

SELECT *
FROM students
WHERE admission_number = 'STU-TEMP-001';

SELECT *
FROM students;

DELETE FROM students
WHERE admission_number = 'STU-TEMP-001';

SELECT *
FROM students
WHERE admission_number = 'STU-TEMP-001';

SELECT *
FROM students;