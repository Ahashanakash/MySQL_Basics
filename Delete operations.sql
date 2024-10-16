CREATE DATABASE Delete_operation;

USE delete_operation;

CREATE TABLE Students(
	ID CHAR(4) PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE Courses(
	Course_ID CHAR(3) PRIMARY KEY,
    Course_Name VARCHAR(50)
);

CREATE TABLE Enroll(
	ID CHAR(3),
	Course_ID CHAR(3),
    Enroll_Date DATE,
    FOREIGN KEY (ID) REFERENCES Students (ID)
    ON DELETE CASCADE ,
--  ON DELETE SET NULL  (TO SET THE DELEED ROW AS NULL)
	FOREIGN KEY (Course_ID) REFERENCES Courses (Course_ID)
    ON DELETE CASCADE 
--  ON DELETE SET NULL  (TO SET THE DELEED ROW AS NULL)
);

INSERT INTO Students
(ID, Name) VALUES ('820', 'Akash'),
('824', 'Morshed'),
('825', 'Shuvo');

INSERT INTO Courses
(Course_ID, Course_Name) VALUES ('101', 'CSE'),
('102', 'EEE'),
('103', 'CIVIL');

INSERT INTO Enroll
(ID, Course_ID, Enroll_Date) VALUES ('820', '101', '2022-11-15'),
('824', '102', '2022-11-20'),
('825', '103', '2022-12-07');

SELECT *
FROM Enroll;

DELETE FROM Students
WHERE ID = '825';