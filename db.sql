CREATE DATABASE bookDB;

CREATE TABLE book (
    id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(20),
    des VARCHAR(255)
);

INSERT INTO book (id,name,des)
VALUES
(101, book45, nice book)

DROP TABLE book;

SELECT * FROM book;

SELECT * FROM book WHERE id = $1;

DELETE FROM book WHERE id = $1;
