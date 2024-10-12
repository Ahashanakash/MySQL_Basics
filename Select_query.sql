USE select_query;

CREATE TABLE Students(
	Roll CHAR(3),
    Name VARCHAR(50),
    Adress VARCHAR(50)
);

INSERT INTO Students
(Roll, Name, Adress) VALUES (823, 'Akash', 'jhsdgjcygbryg'), (824,'Morshed', 'abvfdg');

SELECT Roll
From students;