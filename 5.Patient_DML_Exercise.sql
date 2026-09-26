USE patient;

SELECT * FROM patients;

TRUNCATE TABLE patients;

INSERT INTO patients
(patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, phone, email,emergency_contact_name, emergency_contact_phone, allergies, patient_status)
VALUES ('PT26001', 'Aarya', 'Kapor', '1998-05-12', 'FEMALE','A+', '9876503001','aarya.kapoor@example.test', 'Rohan Kapor','9876513001','Penicillin','ACTIVE');

INSERT INTO patients
(patient_number, first_name, last_name, date_of_birth, biological_sex,blood_group, phone, emergency_contact_name, emergency_contact_phone, patient_status)
VALUES ('PT26002', 'Dev', 'Malhotra', '1985-11-03', 'MALE','O+', '9876503002', 'Leena Malhotra','9876513002', 'ACTIVE');

INSERT INTO patients
(patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, phone, email, emergency_contact_name, emergency_contact_phone, allergies, patient_status)
VALUES
('PT26003', 'Isha', 'Bose', '2001-02-19', 'NOT_DISCLOSED', 'B-', '9876503003', 'isha.bose@example.test', 'Tara Bose', '9876513003', 'Peanuts', 'ACTIVE'),

('PT26004', 'Kiran', 'Ali', '1976-08-27', 'INTERSEX', 'AB+', '9876503004',NULL, 'Sameer Ali','9876513004',NULL,'INACTIVE'),

('PT26005', 'Neel', 'Joshi', '1990-06-10', 'MALE',NULL, '9876503005', 'neel.joshi@example.test', 'Maya Joshi','9876513005', 'Dust', 'ACTIVE');

INSERT INTO patients
(patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, phone, email, emergency_contact_name, emergency_contact_phone, allergies, patient_status)
VALUES
('PT26006', 'Rahul', 'Sharma', '1995-04-15', 'MALE', 'X+', '9876503006', 'rahul@example.test', 'Amit Sharma', '9876513006', NULL, 'ACTIVE');

INSERT INTO patients
(patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, phone, email, emergency_contact_name, emergency_contact_phone, allergies, patient_status)
VALUES
('PT26008', 'Rahul', 'Sharma', '1995-04-15', 'UNKNOWN', 'A+', '9876503006', 'rahul@example.test', 'Amit Sharma', '9876513006', NULL, 'ACTIVE');

INSERT INTO patients
(patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, phone, email, emergency_contact_name, emergency_contact_phone, allergies, patient_status)
VALUES
('PT26008', 'Rahul', 'Sharma', '1995-04-15', 'UNKNOWN', 'A+', '9876503006', 'rahul@example.test', 'Amit Sharma', '9876513006', NULL, 'ACTIVE');

SELECT * FROM patients;

-----------------------------------------------------------------  

UPDATE patients
SET allergies = 'Sulfa drugs'
WHERE patient_number = 'PT26002';

UPDATE patients
SET email = 'dev.malhotra@example.test'
WHERE patient_number = 'PT26002';

UPDATE patients
SET phone = '9876503991'
WHERE patient_number = 'PT26001';

UPDATE patients
SET blood_group = 'O-'
WHERE patient_number = 'PT26005';

UPDATE patients
SET blood_group = 'C+'
WHERE patient_number = 'PT26005';

SELECT * FROM patients;

-----------------------------------------------------------------

SELECT *
FROM patients
WHERE patient_number = 'PT26004';

DELETE FROM patients
WHERE patient_number = 'PT26004';

SELECT *
FROM patients
WHERE patient_number = 'PT26004';

INSERT INTO patients
(patient_number, first_name, last_name, date_of_birth, biological_sex,
 blood_group, phone, email, emergency_contact_name, emergency_contact_phone, allergies, patient_status)
VALUES
('PT-TEMP-01', 'Temp', 'Patient', '2000-01-01', 'MALE',
 'O+', '9876503999', 'temp@example.test', 'Temp Contact',
 '9876504000', NULL, 'ACTIVE');

 SELECT * FROM patients;
