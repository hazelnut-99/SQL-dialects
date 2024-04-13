CREATE TABLE table1 (column1 integer, column2 integer);
INSERT INTO table1(column1, column2) values(1, 1);
BEGIN TRANSACTION;
INSERT INTO table1(column1, column2) values(1, 2);
UPDATE table1 SET column2 = 3 FROM table1 s WHERE s.column1 = 1;
COMMIT;
