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

SELECT * FROM person  WHERE country = 'China' OR gender = 'Male';


-- Comparison operator
SELECT 1 < 3
SELECT 1 <> 3    --check not equal


-- LIMIT use kore amra nidristo sokhok data show korate pari
SELECT * FROM person LIMIT 10;


-- OFFSET didristo sokkhon data skip kore porer gulo show koranor jonno use kori
SELECT * FROM person OFFSET 10 LIMIT 5;

-- NOTE: Best practice --> use FETCH replace LIMIT
SELECT * FROM person OFFSET 10 FETCH FIRST 10 ROW ONLY;

-- OR  & IN
SELECT * FROM person WHERE country = 'China'OR country = 'Japan' OR country = 'Peru';

-- when using IN
SELECT * FROM person WHERE country IN('China', 'Tunisia', 'Peru', 'Japan');


-- BETWEEN compare kore data pawar jonno
SELECT * FROM person WHERE date_of_birth BETWEEN '2010-02-07' AND '2014-02-07'; 


-- LIKE & ILIKE ()
SELECT * FROM person WHERE email LIKE '%.com';

SELECT * FROM person WHERE country ILIKE 'china';


-- GROUP BY 
SELECT country, COUNT(*) FROM person GROUP BY country ORDER BY country;


-- GROUP BY HAVING (use for Extra filtering)
SELECT country, COUNT(*) FROM person GROUP BY country HAVING COUNT(*) > 5 ORDER BY country;


-- MIN, MAX, AVG
SELECT MIN(price) FROM car;
SELECT MAX(price) FROM car;
SELECT AVG(price) FROM car;
SELECT ROUND(AVG(price), 2) FROM car;
SELECT make, model, SUM(price) FROM car GROUP BY make, model;


-- Basics of Arithmetic Operators (+, -, *, /)
SELECT 10 + 5;
SELECT 10 - 5;
SELECT 10 * 5;
SELECT 10 / 5;
SELECT 10!;
SELECT 3^3;
SELECT 10 + 5 * 6;   


