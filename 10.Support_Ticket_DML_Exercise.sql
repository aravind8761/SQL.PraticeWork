USE customer_support;

SELECT * FROM support_tickets;

TRUNCATE TABLE support_tickets;

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES
('TKT-26001', 'Asha Rao', 'asha.rao@example.test', 'Unable to reset password', 'Reset link is not arriving', 'ACCOUNT', 'HIGH', 'OPEN', NULL, NULL);

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES
('TKT-26002', 'Dev Stores', 'dev.stores@example.test', 'Incorrect invoice total', 'The latest invoice contains an extra charge', 'BILLING', 'MEDIUM', 'IN_PROGRESS', 'Neha', NULL),
('TKT-26003', 'Meera Nair', 'meera.nair@example.test', 'Application crashes', 'Application closes while uploading a file', 'TECHNICAL', 'CRITICAL', 'OPEN', 'Vikram', NULL);

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES
('TKT-26004', 'Omar Ali', 'omar.ali@example.test', 'Change registered email', 'Request to replace the account email', 'ACCOUNT', 'LOW', 'OPEN', NULL, NULL),
('TKT-26005', 'Test User', 'test.user@example.test', 'Sample resolved request', 'Temporary ticket used for delete practice', 'GENERAL', 'MEDIUM', 'RESOLVED', 'QA Agent', CURRENT_TIMESTAMP);

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES
('TKT-26006', 'Test User', 'test.user2@example.test', 'Shipping issue', 'Test invalid category', 'SHIPPING', 'MEDIUM', 'OPEN', NULL, NULL);

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES
('TKT-26007', 'Test User', 'test.user3@example.test', 'Urgent request', 'Test invalid priority', 'GENERAL', 'URGENT', 'OPEN', NULL, NULL);

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES
('TKT-26008', 'Test User', 'test.user4@example.test', 'Waiting request', 'Test invalid status', 'GENERAL', 'MEDIUM', 'WAITING', NULL, NULL);

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES
('TKT-26001', 'Duplicate User', 'duplicate@example.test', 'Duplicate ticket', 'Test duplicate ticket number', 'GENERAL', 'LOW', 'OPEN', NULL, NULL);

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES
('TKT-26009', 'Test User', 'test.user5@example.test', 'Invalid resolution time', 'Resolved time is earlier than creation time', 'GENERAL', 'MEDIUM', 'RESOLVED', NULL, '2026-09-24 11:00:00');

UPDATE support_tickets
SET assigned_agent = 'Kavya',
    ticket_status = 'IN_PROGRESS'
WHERE ticket_number = 'TKT-26001';

UPDATE support_tickets
SET ticket_status = 'RESOLVED',
    resolved_at = CURRENT_TIMESTAMP
WHERE ticket_number = 'TKT-26003';

UPDATE support_tickets
SET priority = 'MEDIUM'
WHERE category = 'ACCOUNT'
AND ticket_status = 'OPEN'
AND priority = 'LOW';

UPDATE support_tickets
SET assigned_agent = 'Rahul'
WHERE ticket_number = 'TKT-26002'
AND assigned_agent = 'Neha';

UPDATE support_tickets
SET resolved_at = '2026-09-24 11:00:00'
WHERE ticket_number = 'TKT-26003';

SELECT *
FROM support_tickets
WHERE ticket_number = 'TKT-26005';

DELETE FROM support_tickets
WHERE ticket_number = 'TKT-26005'
AND ticket_status = 'RESOLVED';

SELECT *
FROM support_tickets
WHERE ticket_number = 'TKT-26005';

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES
('TKT-TEMP-01', 'Temporary User', 'temporary@example.test', 'Temporary ticket', 'Ticket for delete practice', 'GENERAL', 'LOW', 'OPEN', NULL, NULL);

SELECT *
FROM support_tickets
WHERE ticket_number = 'TKT-TEMP-01';

DELETE FROM support_tickets
WHERE ticket_number = 'TKT-TEMP-01';

SELECT *
FROM support_tickets
WHERE ticket_number = 'TKT-TEMP-01';

SELECT * FROM support_tickets;