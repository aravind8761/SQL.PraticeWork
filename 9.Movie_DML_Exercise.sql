USE movie_catalogue;

SELECT * FROM movies;

TRUNCATE TABLE movies;

INSERT INTO movies
(movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status)

VALUES ('MOV26001', 'River Beyond the Hills', 'Drama', 'Hindi', '2026-01-16', 132, 'Anika Verma', 'PARENTAL_GUIDANCE', 8.2, 35000000.00, 'RELEASED');

INSERT INTO movies
(movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status)

VALUES ('MOV26002', 'Orbit Seven', 'Science Fiction', 'English', '2026-05-22', 148, 'Daniel Cole', 'PARENTAL_GUIDANCE', 7.6, 120000000.00, 'RELEASED'),

('MOV26003', 'Little Mango Tree', 'Animation', 'Telugu', '2026-07-10', 96, 'Ravi Teja', 'ALL_AGES', 8.5, 18000000.00, 'RELEASED');

INSERT INTO movies
(movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status)

VALUES ('MOV27001', 'Echoes of Tomorrow', 'Thriller', 'English', NULL, 125, 'Maya Sen', 'UNRATED', NULL, NULL, 'UPCOMING'),

('MOV24005', 'Old Harbour', 'Mystery', 'Bengali', '2024-02-09', 118, 'Sayan Dutta', 'ADULT', 6.9, 22000000.00, 'ARCHIVED');

INSERT INTO movies
(movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status)

VALUES ('MOV26004', 'Zero Duration', 'Drama', 'Hindi', '2026-08-01', 0, 'Test Director', 'ALL_AGES', 5.0, 1000000.00, 'RELEASED');

INSERT INTO movies
(movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status)

VALUES ('MOV26005', 'Invalid Rating', 'Drama', 'Hindi', '2026-08-01', 120, 'Test Director', 'ALL_AGES', 11.0, 1000000.00, 'RELEASED');

INSERT INTO movies

(movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status)

VALUES
('MOV26006', 'Negative Budget', 'Drama', 'Hindi', '2026-08-01', 120, 'Test Director', 'ALL_AGES', 7.0, -500000.00, 'RELEASED');

INSERT INTO movies

(movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status)

VALUES
('MOV26007', 'Teen Certificate', 'Drama', 'Hindi', '2026-08-01', 120, 'Test Director', 'TEEN', 7.0, 1000000.00, 'RELEASED');

INSERT INTO movies

(movie_code, title, genre, orginal_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status)

VALUES
('MOV26001', 'Duplicate Movie', 'Action', 'English', '2026-09-01', 130, 'Duplicate Director', 'ALL_AGES', 7.5, 5000000.00, 'RELEASED');

SELECT * FROM movies;

UPDATE movies
SET release_date = '2027-03-19',
    age_certificate = 'PARENTAL_GUIDANCE'
WHERE movie_code = 'MOV27001';

UPDATE movies
SET audience_rating = 8.8
WHERE movie_code = 'MOV26003';

UPDATE movies
SET production_budget = production_budget * 1.05
WHERE genre = 'Science Fiction'
AND production_budget IS NOT NULL;

UPDATE movies
SET catalog_status = 'ARCHIVED'
WHERE catalog_status = 'RELEASED'
AND release_date < '2025-01-01';

UPDATE movies
SET audience_rating = 12.0
WHERE movie_code = 'MOV26003';

SELECT *
FROM movies
WHERE movie_code = 'MOV24005';

DELETE FROM movies
WHERE movie_code = 'MOV24005'
AND catalog_status = 'ARCHIVED';

SELECT *
FROM movies
WHERE movie_code = 'MOV24005';

INSERT INTO movies

(movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status)

VALUES
('MOV-TEMP-01', 'Temporary Movie', 'Drama', 'English', NULL, 100, 'Temporary Director', 'UNRATED', NULL, NULL, 'UPCOMING');

SELECT *
FROM movies
WHERE movie_code = 'MOV-TEMP-01';

DELETE FROM movies
WHERE movie_code = 'MOV-TEMP-01';

SELECT *
FROM movies
WHERE movie_code = 'MOV-TEMP-01';

SELECT * FROM movies;

