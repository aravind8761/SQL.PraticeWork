CREATE DATABASE bank_account;

USE bank_account;

CREATE TABLE bank_accounts 
(account_id INT AUTO_INCREMENT NOT NULL, 
account_number CHAR (12) NOT NULL,
account_holder_name VARCHAR (120) NOT NULL,
account_type VARCHAR (20) NOT NULL,
balance DECIMAL (15, 2) DEFAULT 0.00 NOT NULL,
currency_code CHAR (3) DEFAULT 'INR' NOT NULL,
branch_name VARCHAR (100) NOT NULL,
opened_date DATE NOT NULL,
interest_rate DECIMAL (5,2) NOT NULL DEFAULT 0.00,
overdraft_limit DECIMAL (12, 2) NOT NULL DEFAULT 0.00,
account_status VARCHAR (20) DEFAULT 'ACTIVE' NOT NULL,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

CONSTRAINT `pk_account_id` PRIMARY KEY (account_id),
CONSTRAINT `uq_account_number` UNIQUE (account_number),
CONSTRAINT `chk_account_number` CHECK (CHAR_LENGTH(account_number) = 12),
CONSTRAINT `chk_account_type` CHECK (account_type IN ('SAVINGS', 'CURRENT', 'FIXED_DEPOSIT')),
CONSTRAINT `chk_balance` CHECK (balance >= 0),
CONSTRAINT `chk_interest_rate` CHECK (interest_rate BETWEEN 0.00 AND 100.00),
CONSTRAINT `chk_overdraft_limit` CHECK (overdraft_limit >= 0),
CONSTRAINT `chk_account_status` CHECK (account_status IN ('ACTIVE', 'FROZEN', 'DORMANT','CLOSED')),
CONSTRAINT chk_currency_code CHECK(CHAR_LENGTH(currency_code) = 3)
);

INSERT INTO bank_accounts
(account_number, account_holder_name, account_type, balance,
currency_code, branch_name, opened_date, interest_rate,
overdraft_limit, account_status)

VALUES
('123456789012', 'ARAVIND', 'SAVINGS', 10000.00,
'INR', 'HYDERABAD', '2026-01-10', 4.50, 0.00, 'ACTIVE');

INSERT INTO bank_accounts
(account_number, account_holder_name, account_type, balance,
currency_code, branch_name, opened_date, interest_rate,
overdraft_limit, account_status)

VALUES
('123456789013', 'RAVI', 'CURRENT', 20000.00,
'INR', 'VIJAYAWADA', '2026-02-15', 0.00, 5000.00, 'ACTIVE');

INSERT INTO bank_accounts
(account_number, account_holder_name, account_type, balance,
currency_code, branch_name, opened_date, interest_rate,
overdraft_limit, account_status)

VALUES
('12345678906', 'YASWANTH', 'FIXED_DEPOSIT', 50000.00,
'INR', 'CHENNAI', '2026-03-20', 7.25, 0.00, 'ACTIVE');

SELECT * FROM bank_accounts;
