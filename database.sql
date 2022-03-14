CREATE DATABASE guided_inquiry;

USE guided_inquiry;

-- very easy
CREATE TABLE cars (
id INT,
make VARCHAR(100),
model VARCHAR(100),
model_year INT
);

INSERT INTO cars (make, model, model_year)
VALUES
('Bugatti','Veyron', 2005), ('Ford', 'GT', 2006), ('Porsche', '918', '2013');

INSERT INTO cars (make, model, model_year)
VALUES
('Lamborghini','Aventador', 2020), ('Ferrari', 'F8', 2021);

-- easy
CREATE TABLE books (
id INT,
title VARCHAR(100),
author_firstname VARCHAR(100),
author_lastname VARCHAR (100),
publish_date VARCHAR(100)
);
INSERT INTO books (title, author_firstname ,author_lastname, publish_date)
VALUES
('Captain America', 2000, 'Stan', 'Lee'),
('Pendragon', 2005, 'DJ', 'MacHale'),
('Ghost Recon', 2003, 'Tom', 'Clancy'),
('Tom Sawyer', 1968, 'Mark', 'Twain'),
('Percy Jackson', 2013, 'Rick', 'Riordan');

INSERT INTO books (title, author_firstname, author_lastname, publish_date)
VALUES
('The City of Ember', 2003, 'Jeanne', 'DuPrau'),
('Harry Potter', 1997, 'JK', 'Rowling');
DELETE FROM books ORDER BY publish_date DESC LIMIT 1;
-- medium
CREATE TABLE movies (
id INT,
title VARCHAR(100),
release_date VARCHAR(100),
rating ENUM ('G', 'PG', 'PG-13', 'R'),
PRIMARY KEY(movies_id)
);


INSERT INTO movies (title, release_date, rating)
VALUES
('Interstellar', 2014, 'PG-13'),
('Inception', '2010', 'PG-13'),
('Parasite', 2019, 'R'),
('Avengers: Endgame', 2019, 'PG-13'),
('Uncharted', 2022, 'PG-13'),
('Dune', 2021, 'PG-13'),
('Spider-Man: No Way Home', 2021, 'PG-13'),
('The Dark Knight', 2008, 'PG-13'),
('The Batman', 2022, 'PG-13'),
('Avatar', 2009, 'PG-13');

SELECT * FROM movies WHERE title LIKE '%s' ORDER BY release_date DESC;

-- hard
ALTER TABLE movies ADD director_fullname VARCHAR(100);

UPDATE movies SET director_firstname = 'Winston', 
director_lastname= 'M' WHERE movies >= 1 ;

SELECT director_firstname, director_lastname, 
CONCAT (director_firstname,' ', director_lastname) AS director
FROM movies;

SELECT * FROM movies ORDER BY director_lastname ASC;

DELETE FROM movies WHERE director_lastname BETWEEN 'r%' AND 'z%';

SELECT * FROM movies LIMIT 3;

-- very hard
CREATE TABLE cars_2(
make VARCHAR(100),
model VARCHAR(100),
model_year INT
);

INSERT INTO cars_2 (make, model, model_year) VALUES ('Ford', 'Focus', 2020), ('Lexus', 'LC500', 2020);

INSERT INTO cars_2 (make, model, model_year) VALUES 
('Dodge', 'Challenger', 2020), 
('Alfa Romeo', 'Giulia', 2017), 
('Ford', 'F-150', 2015);

ALTER TABLE cars_2 ADD price INT;
ALTER TABLE cars_2 ADD color VARCHAR(100);

SELECT make, model, 
CONCAT (make, ' ', model) 
AS car FROM cars_2;

SELECT make, COUNT(*) FROM cars_2 GROUP BY make;