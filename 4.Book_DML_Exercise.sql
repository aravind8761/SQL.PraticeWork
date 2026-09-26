use book_catalouge;

SELECT * FROM books;

TRUNCATE TABLE books;

INSERT INTO books
(isbn, title, author_name, gener, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES (9780134685991, 'Effective Java', 'Joshua Bloch', 'Programming', 'Addison-Wesley', 2018, 416, 'HARDCOVER', 4500.00, 6, 'English');

INSERT INTO books (isbn, title, author_name, gener, publisher, publication_year, page_count, book_format, price, copies_available, language) 
VALUES (9780132350884, 'Clean Code', 'Robert C. Martin', 'Programming', 'Prentice Hall', 2008, 464, 'PAPERBACK', 3200.00, 12, 'English'),
(9780262046305, 'Introduction to Algorithms', 'Thomas H. Cormen', 'Computer Science', 'MIT Press', 2022, 1312, 'HARDCOVER', 6500.00, 4, 'English');

INSERT INTO books (isbn, title, author_name, gener, publication_year, page_count, book_format, price, copies_available, language) 
VALUES (9780000000001, 'The Monsoon Trail', 'Kavya Sen', 'Fiction', 2025, 288, 'PAPERBACK', 499.00, 20, 'English');

INSERT INTO books (isbn, title, author_name, gener, publisher, publication_year, page_count, book_format, price, copies_available, language) 
VALUES (9780000000002, 'Data Stories for Beginners', 'Asha Rao', 'Education', 'Learning House', 2026, 210, 'EBOOK', 299.00, 0, 'English');

INSERT INTO books (isbn, title, author_name, gener, publisher, publication_year, page_count, book_format, price, copies_available, language) 
VALUES (9780000000021, 'Data Stories for Beginners', 'Asha Rao', 'Education', 'Learning House', 999, 210, 'EBOOK', 299.00, 0, 'English');

INSERT INTO books (isbn, title, author_name, gener, publisher, publication_year, page_count, book_format, price, copies_available, language) 
VALUES (9780000000021, 'Data Stories for Beginners', 'Asha Rao', 'Education', 'Learning House', 999, 0, 'AUDIOBOOK', -299.00, 0, 'English');

UPDATE books
SET copies_available = copies_available + 10
WHERE title = 'Clean Code';

UPDATE books
SET price = ROUND(price * 0.90, 2)
WHERE book_format = 'EBOOK';

UPDATE books
SET publisher = 'Riverleaf Press'
WHERE title = 'The Monsoon Trail';

UPDATE books
SET copies_available = 15
WHERE title = 'Data Stories for Beginners';

UPDATE books
SET page_count = 0
WHERE title = 'Clean Code';

SELECT *
FROM books
WHERE isbn = 9780000000001;

DELETE FROM books
WHERE isbn = 9780000000001;

INSERT INTO books
(isbn, title, author_name, gener, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES (9780000000999, 'Temporary Book', 'Test Author', 'Fiction','Test Publisher', 2026, 100, 'PAPERBACK', 199.00, 5, 'English');

SELECT *
FROM books
WHERE isbn = 9780000000999;

DELETE FROM books
WHERE isbn = 9780000000999;

SELECT *
FROM books
WHERE isbn = 9780000000999;

SELECT * FROM books;