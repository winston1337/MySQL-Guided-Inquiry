CREATE DATABASE guided_inquiry;

USE guided_inquiry;

CREATE TABLE cars (
id INT AUTO_INCREMENT,
make VARCHAR(100),
model VARCHAR(100),
year INT
);

CREATE TABLE books (
id INT AUTO_INCREMENT,
title VARCHAR(100),
author_firstname VARCHAR(100),
author_lastname VARCHAR (100),
publish_date VARCHAR(100)
);

CREATE TABLE movies (
id INT AUTO_INCREMENT,
title VARCHAR(100),
release_date VARCHAR(100),
rating INT
);
