-- database create command
CREATE DATABASE test;


-- database table create command
CREATE TABLE person (
    id int,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    date_of_birth TIMESTAMP,
    email VARCHAR(130)
);

CREATE TABLE person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50)  NOT NULL ,
    gender VARCHAR(10)  NOT NULL,
    date_of_birth TIMESTAMP NOT NULL,
    email VARCHAR(130) NOT NULL
);


-- Table delete korar jonno  
DROP TABLE person;

-- person table a ki ki data ache dekhar jonno
SELECT * FROM person;


-- insert data in table
INSERT INTO person (first_name, last_name, gender, date_of_birth, email)
VALUES
('Habibur', 'Rahman', 'Male', '12 march 2002','habib@gmail.com');


-- existing kuno table er type change korar jonno
ALTER TABLE person
ALTER COLUMN gender TYPE VARCHAR(10);

-- nidristo kuno table er data dekhar jonno
SELECT first_name FROM person;


-- order onusare data dekhano ASC, DESC
SELECT * FROM person ORDER BY email;


-- DATA duplicate hole ai command use korbo
SELECT DISTINCT  country  FROM person ORDER BY country;


-- condition onusare data get and multiple condition
SELECT * FROM person  WHERE country = 'China' AND gender = 'Male';
