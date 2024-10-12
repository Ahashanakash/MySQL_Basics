CREATE DATABASE Func;
USE func;

CREATE TABLE WAPDA_LORD(
	Name CHAR(10),
    Age INT,
    Institute VARCHAR(50),
    Money INT
);

INSERT INTO WAPDA_LORD
(Name, Age, Institute, Money) VALUES 
	('Akash', 23, 'PCIU', 3000),
	('Niloy', 23, 'EDU', 10000),
    ('Arian', 22, 'CUET', 500000),
    ('Rifat', 24, 'PCIU', 5000);
    
SET SQL_SAFE_UPDATES=1;
    
UPDATE Wapda_lord
SET Money = 50000
WHERE Money = 500000;

SELECT UPPER(Name)
FROM wapda_lord;

SELECT LOWER(Institute)
FROM wapda_lord;

SELECT COUNT(Age)
FROM wapda_lord;

SELECT SUM(Money)
FROM Wapda_lord;

SELECT AVG(Age)
FROM Wapda_lord;

SELECT MAX(Money)
FROM Wapda_lord;

SELECT MIN(Age)
FROM Wapda_lord;

SELECT CONCAT(Name, Institute)
FROM Wapda_lord;

SELECT SUBSTRING('PCIU', 1,2)
FROM Wapda_lord;

-- How many rows are in a table
SELECT COUNT(*)
FROM Wapda_lord;

-- there are manymore group functions 