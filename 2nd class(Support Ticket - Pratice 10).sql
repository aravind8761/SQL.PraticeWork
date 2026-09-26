CREATE DATABASE customer_support;

USE customer_support;

CREATE TABLE support_tickets
(ticket_id INT AUTO_INCREMENT NOT NULL,
ticket_number VARCHAR(20) NOT NULL,
requester_name VARCHAR(120) NOT NULL,
requester_email VARCHAR(200) NOT NULL,
subject VARCHAR(255) NOT NULL,
description TEXT NOT NULL,
category VARCHAR(20) NOT NULL,
priority VARCHAR(20) NOT NULL DEFAULT 'MEDIUM',
ticket_status VARCHAR(20) NOT NULL DEFAULT 'OPEN',
assigned_agent VARCHAR(120),
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
resolved_at TIMESTAMP NULL,
last_updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
CONSTRAINT pk_ticket_id PRIMARY KEY (ticket_id),
CONSTRAINT uq_ticket_number UNIQUE (ticket_number),
CONSTRAINT chk_category CHECK (category 
IN('BILLING', 'TECHNICAL', 'ACCOUNT', 'GENERAL')),
CONSTRAINT chk_priority CHECK (priority 
IN ('LOW', 'MEDIUM', 'HIGH', 'CRITICAL')),
CONSTRAINT chk_ticket_status CHECK (ticket_status IN
('OPEN', 'IN_PROGRESS', 'RESOLVED', 'CLOSED')),
CONSTRAINT chk_resolved_at CHECK (resolved_at IS NULL OR resolved_at >= created_at)
);

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject,
 description, category, assigned_agent, resolved_at)

VALUES
('TKT26001', 'Aravind Kumar', 'aravind@example.test',
 'Unable to login',
 'Customer is unable to login to the account.',
 'ACCOUNT', NULL, NULL);

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject,
 description, category, priority, ticket_status,
 assigned_agent, resolved_at)

VALUES
('TKT26002', 'Rahul Sharma', 'rahul@example.test',
 'Payment failed',
 'Payment transaction is failing during checkout.',
 'BILLING', 'HIGH', 'IN_PROGRESS',
 'Agent Ravi', NULL);

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject,
 description, category, priority, ticket_status,
 assigned_agent, resolved_at)

VALUES
('TKT26003', 'Priya Nair', 'priya@example.test',
 'Application error',
 'Customer received an unexpected application error.',
 'TECHNICAL', 'CRITICAL', 'RESOLVED',
 'Agent Meera',
 DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 1 HOUR));

SELECT * FROM support_tickets;

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject,
 description, category)

VALUES
('TKT26004', 'Test Customer', 'test@example.test',
 'Default Test',
 'Testing default priority and status.',
 'GENERAL');

SELECT *
FROM support_tickets
WHERE ticket_number = 'TKT26004';

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject,
 description, category, resolved_at)

VALUES
('TKT26005', 'Null Resolution', 'null@example.test',
 'Pending Request',
 'Testing a ticket with no resolution time.',
 'ACCOUNT', NULL);

SELECT *
FROM support_tickets
WHERE ticket_number = 'TKT26005';

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject,
 description, category, resolved_at)

VALUES
('TKT26006', 'Invalid Resolution', 'invalid@example.test',
 'Invalid Resolution Time',
 'Testing an invalid resolution timestamp.',
 'TECHNICAL',
 DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 1 DAY));

SELECT *
FROM support_tickets
WHERE ticket_number = 'TKT26006';

SELECT * FROM support_tickets;
