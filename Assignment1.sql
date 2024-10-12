CREATE DATABASE Assignment1;
USE Assignment1;

CREATE TABLE Student(
	Roll CHAR(3)PRIMARY KEY,
    Name VARCHAR(50)NOT NULL,
    -- Email VARCHAR(500) UNIQUE,
    Age INT CHECK(Age>6)
);

INSERT INTO Student
(Roll, Name, Age) VALUES (111, 'Rahim', 20);

INSERT INTO Student (Roll, Name, Age) VALUES (820, 'Akash', 17),
(821, 'Akash', 13),
(822, 'Bkash', 27),
(823, 'Ckash', 15),
(819, 'Akash', 11);
SELECT Age, Roll
FROM Student
WHERE Name='Bkash';

CREATE TABLE Library(
	Roll CHAR(3)NOT NULL,
    Book VARCHAR(50),
    PRIMARY KEY (Roll, Book),
    FOREIGN KEY (Roll) REFERENCES Student(Roll)
);
drop table Library;
INSERT INTO Library
(Roll, Book) VALUES ('111', 'ABCD');

CREATE TABLE Fees(
	Roll CHAR(3)NOT NULL,
    Amount INT CHECK(Amount<=17850),
    FOREIGN KEY (Roll) REFERENCES Student(Roll)
);

INSERT INTO Fees
(Roll, Amount) VALUES ('111', 17851);

SELECT Roll,Age 
FROM Student
WHERE Name = 'Bkash';