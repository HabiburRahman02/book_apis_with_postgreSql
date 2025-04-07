-- database create command
CREATE DATABASE test;


-- database table create command
CREATE TABLE person (
    id int,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    date_of_birth TIMESTAMP
);


-- person table a ki ki data ache dekhar jonno
SELECT * FROM person;


-- insert data in table
INSERT INTO person(id,first_name,last_name,gender,date_of_birth)
VALUES
(100, 'Rafi', 'Hasan', 'male', '2002-05-15 00:00:00'),
(101,'Habibur', 'Rahman', 'male','2004-12-29 00:00:00');


-- existing kuno table er type change korar jonno
ALTER TABLE person
ALTER COLUMN gender TYPE VARCHAR(10);