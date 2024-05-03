DROP TABLE IF EXISTS file;
CREATE TABLE file (s String, n UInt32) ENGINE = File(CSVWithNames);
INSERT INTO file VALUES ('hello', 1), ('world', 2);
CREATE TEMPORARY TABLE file2 AS SELECT * FROM file;
