CREATE DATABASE book_catalouge;

use book_catalouge;

CREATE TABLE books(book_id INT AUTO_INCREMENT NOT NULL,
isbn CHAR (13) NOT NULL,
title VARCHAR (200) NOT NULL,
author_name VARCHAR (120) NOT NULL,
gener VARCHAR (60) NOT NULL,
publisher VARCHAR (120),
publication_year SMALLINT NOT NULL,
page_count SMALLINT NOT NULL,
book_format VARCHAR (20) NOT NULL,
price DECIMAL (10,2) NOT NULL,
copies_available INT NOT NULL,
language VARCHAR (40) NOT NULL DEFAULT 'English',
added_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

CONSTRAINT `pk_book_id` PRIMARY KEY (book_id),
CONSTRAINT `uq_isbn` UNIQUE (isbn),
CONSTRAINT `chk_publication_year` CHECK (publication_year BETWEEN 1000 AND 2100),
CONSTRAINT `chk_page_count` CHECK (page_count > 0),
CONSTRAINT `chk_price` CHECK (price >= 0),
CONSTRAINT `chk_copies_available` CHECK (copies_available >= 0),
CONSTRAINT chk_book_format CHECK(
        book_format IN ('HARDCOVER', 'PAPERBACK', 'EBOOK'))
);

INSERT INTO books
(isbn, title, author_name, gener, publisher,
publication_year, page_count, book_format, price,
copies_available, language)

VALUES
('9780134685991', 'Java', 'Joshua Bloch', 'Programming',
'Pearson', 2018, 416, 'HARDCOVER', 60.00, 10, 'English');

INSERT INTO books
(isbn, title, author_name, gener, publisher,
publication_year, page_count, book_format, price,
copies_available, language)

VALUES
('9780596009205', 'core Java', 'Aravind', 'Programming',
'oriented', 2005, 688, 'PAPERBACK', 550.00, 15, 'English');

INSERT INTO books
(isbn, title, author_name, gener, publisher,
publication_year, page_count, book_format, price,
copies_available, language)

VALUES
('9780132350884', 'Clean Code', 'Robert Martin', 'Programming',
'Prentice Hall', 2200, 464, 'PAPERBACK', 700.00, 8, 'English');

INSERT INTO books
(isbn, title, author_name, gener, publisher,
publication_year, page_count, book_format, price,
copies_available, language)

VALUES
('9780132350884', 'Clean Code', 'Robert Martin', 'Programming',
'Prentice Hall', 2008, 0, 'PAPERBACK', 700.00, 8, 'English');

INSERT INTO books
(isbn, title, author_name, gener, publisher,
publication_year, page_count, book_format, price,
copies_available, language)

VALUES
('123456789', 'Java Basics', 'John Smith', 'Programming',
'ABC Publications', 2020, 300, 'PAPERBACK', 400.00, 5, 'English');

INSERT INTO books
(isbn, title, author_name, gener, publisher,
publication_year, page_count, book_format, price,
copies_available, language)

VALUES
('9781234567890', 'Java Programming', 'John Smith', 'Programming',
'ABC Publications', 2020, 400, 'AUDIOBOOK', 500.00, 5, 'English');

INSERT INTO books
(isbn, title, author_name, gener, publisher,
publication_year, page_count, book_format, price,
copies_available)

VALUES
('9781234567891', 'Python Basics', 'Mark Lee', 'Programming',
'Tech Publications', 2024, 350, 'EBOOK', 300.00, 10);

SELECT * FROM books;





