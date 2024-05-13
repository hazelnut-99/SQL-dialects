CREATE TABLE students(id INTEGER, name VARCHAR, major VARCHAR, year INTEGER);
CREATE TABLE exams(sid INTEGER, course VARCHAR, curriculum VARCHAR, grade INTEGER, year INTEGER);
INSERT INTO students VALUES (1, 'Mark', 'CS', 2017);
INSERT INTO students VALUES (2, 'Dirk', 'CS', 2017);
INSERT INTO exams VALUES (1, 'Database Systems', 'CS', 10, 2015);
INSERT INTO exams VALUES (1, 'Graphics', 'CS', 9, 2016);
INSERT INTO exams VALUES (2, 'Database Systems', 'CS', 7, 2015);
INSERT INTO exams VALUES (2, 'Graphics', 'CS', 7, 2016);
