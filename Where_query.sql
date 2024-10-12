CREATE DATABASE where_query;

USE where_query;

CREATE TABLE Student(
	Roll CHAR(3),
    Name VARCHAR (50),
    Adress VARCHAR(50)
);

INSERT INTO Student
(Roll, Name, Adress) VALUES ('823', 'Akash', 'jaeby'),('888', 'kabir','iewurnvfcg');

SELECT Roll, Adress
FROM Student
WHERE Roll = 823;