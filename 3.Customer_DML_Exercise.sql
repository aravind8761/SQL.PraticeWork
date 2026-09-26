USE customer_profile;

SELECT * FROM customer;

TRUNCATE TABLE customer;

INSERT INTO customer
(customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)
VALUES ('CUST26001', 'Ananya', 'Iyer', 'ananya.iyer@example.test', '9876502001','1995-04-11', 'Bengaluru','Karnataka','560001', 'PREMIUM', '75000.00', TRUE);

INSERT INTO customer
(customer_code, first_name, last_name, email, city, state, postal_code, customer_type, credit_limit, is_active)
VALUES ('CUST26002', 'Rohan', 'Das', 'rohan.das@example.test','Kolkata','WestBengal','760001', 'REGULAR', '0.00',TRUE);

INSERT INTO customer
(customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)
VALUES ('CUST26003', 'Meera', 'Sahah', 'meera.shah@example.test', '9876502003','1992-08-24', 'Mumbai','Maharastra','400001', 'CORPORATE', '250000.00',TRUE),
('CUST26004','Arjun','Reddy', 'arjun.reddy@example.test','9876502004','1988-01-16','Hyderabad','Telangana','500001','PREMIUM', '100000.00',TRUE);

INSERT INTO customer
(customer_code, first_name, last_name, email, city, state, postal_code, customer_type, credit_limit, is_active)
VALUES ('CUST26005', 'Nisha', 'Menon', 'nisha.menon@example.test','Kochi','Kerala','760001', 'REGULAR', 0.00,FALSE);

INSERT INTO customer
(customer_code, first_name, last_name, email, city, state, postal_code, customer_type, credit_limit, is_active)
VALUES ('CUST26006', 'Nisha', 'Menon', 'nisha.menon@example.test','Kochi','Kerala','760001', 'GOLD', 0.00,FALSE);

UPDATE customer 
SET credit_limit = credit_limit * 1.10 
WHERE is_active = TRUE
  AND customer_type = 'PREMIUM';

UPDATE customer
SET phone = '9876502002'
WHERE customer_code = 'CUST26002';

UPDATE customer
SET city = 'Secunderabad',
    postal_code = '500003'
WHERE customer_code = 'CUST26004';

UPDATE customer
SET credit_limit = 275000.00
WHERE customer_code = 'CUST26003';

UPDATE customer
SET phone = '9876502002'
WHERE customer_code = 'CUST26002';

SELECT * FROM customer;

SELECT *
FROM customer
WHERE is_active = FALSE;

DELETE FROM customer
WHERE is_active = FALSE;

INSERT INTO customer
( customer_code, first_name, last_name,email, phone, city,state, postal_code,customer_type,
 credit_limit, is_active)
VALUES
('CUST-TEMP-01', 'Temporary', 'Customer','temp@123', '9876509999',
 'Hyderabad','Telangana', '500001','REGULAR', 10000.00, TRUE);

 SELECT *
FROM customer
WHERE customer_code = 'CUST-TEMP-01';

DELETE FROM customer
WHERE customer_code = 'CUST-TEMP-01';

SELECT *
FROM customer
WHERE customer_code = 'CUST-TEMP-01';

SELECT * FROM customer;




