USE batch_30;

select *
from student;

ALTER TABLE student
MODIFY COLUMN ID INT;

ALTER TABLE student
ADD COLUMN AGE INT ;

SET SQL_SAFE_UPDATES=1;
UPDATE STUDENT
SET AGE = 24
WHERE ID = 823;

UPDATE STUDENT
SET AGE = 22
WHERE ID = 824;

-- removing unnecessary values
UPDATE STUDENT
SET AGE = null
WHERE ID IS null;

-- DEELTE ROWS
DELETE FROM STUDENT
WHERE ID IS NULL;