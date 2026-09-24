CREATE DATABASE customer_profile;

USE customer_profile;

CREATE TABLE customer
(customer_id INT AUTO_INCREMENT ,
customer_code VARCHAR(12) NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(120) NOT NULL,
phone VARCHAR(15) NULL,
date_of_birth DATE NULL,
city VARCHAR(80) NOT NULL,
state VARCHAR(80) NOT NULL,
postal_code VARCHAR(12) NOT NULL,
customer_type VARCHAR(15) NOT NULL,
credit_limit DECIMAL(12,2) NOT NULL,
is_active BOOLEAN NOT NULL,
registered_at TIMESTAMP,

CONSTRAINT `uq_customer_code` UNIQUE (customer_code),
CONSTRAINT `uq_email` UNIQUE (email),
CONSTRAINT `uq_phone` UNIQUE (phone),
CONSTRAINT `pk_customer_id` PRIMARY KEY (customer_id),
CONSTRAINT `chk_customer_type` CHECK (customer_type IN ('REGULAR', 'PREMIUM', 'CORPORATE')),
CONSTRAINT `chk_credit_limit` CHECK (credit_limit >= 0.00));

INSERT INTO customer
(customer_code, first_name, last_name, email, phone,
date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)

VALUES
('CUS001', 'ARAVIND', 'KUMAR', 'aravind@gmail.com', '9876543210',
'2003-05-15', 'Hyderabad', 'Telangana', '500001', 'REGULAR', 5000.00, TRUE);

INSERT INTO customer
(customer_code, first_name, last_name, email, phone,
date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)

VALUES
('CUS002', 'RAHUL', 'KUMAR', 'rahul@gmail.com', '9123456780',
'2002-08-20', 'Hyderabad', 'Telangana', '500002', 'PREMIUM', 10000.00, TRUE);

INSERT INTO customer
(customer_code, first_name, last_name, email,
date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)

VALUES
('CUS003', 'SURESH', 'RAO', 'suresh@gmail.com',
'2004-01-10', 'Vijayawada', 'Andhra Pradesh', '520001', 'REGULAR', 0.00, TRUE);

INSERT INTO customer
(customer_code, first_name, last_name, email, phone,
date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)

VALUES
('CUS005', 'KIRAN', 'REDDY', 'kiran@gmail.com', '9876543210',
'2001-06-12', 'Hyderabad', 'Telangana', '500003', 'REGULAR', 2000.00, TRUE);

SELECT * FROM customer;




