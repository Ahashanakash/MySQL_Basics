CREATE DATABASE Batch_30;

USE Batch_30;

CREATE TABLE Student(
	ID CHAR(4),
    Name VARCHAR(50),
    Marks DOUBLE

);

INSERT INTO Student
(ID, Name, Marks) VALUES (820, 'Akash', 85.9);
INSERT INTO Student
(ID, Name, Marks) VALUES (824, 'Morshed', 85.9);

UPDATE Student
SET ID = 823
WHERE ID = 820;

SET SQL_SAFE_UPDATES = 1;

DELETE FROM Student
WHERE  ID = 823;

DROP TABLE Student;