CREATE DATABASE Constrains;
USE Constrains;

CREATE TABLE Students(
	Roll CHAR(3) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) UNIQUE,
    Adress VARCHAR(500),
    Age INT CHECK(Age>18)
);

CREATE TABLE Library(
	Roll VARCHAR(50),
    Institute VARCHAR(50),
    PRIMARY KEY(Roll,Institute)
);

INSERT INTO Students (Roll, Name, Email, Adress, Age) VALUES (829, 'Akash', 'akash24534@gmail.com' , 'wapda', 17),
(824, 'Akash', 'aash24534@gmail.com' , 'wapda', 17),
(825, 'Bkash', 'kash24534@gmail.com' , 'wapda', 17),
(826, 'Ckash', 'aksh24534@gmail.com' , 'wapda', 17),
(827, 'Akash', 'akash2434@gmail.com' , 'wapda', 17);
SET SQL_SAFE_UPDATES = 0;

UPDATE Students
SET Age = 19 WHERE Age = 23;
SELECT *
FROM Students;