DROP TABLE IF EXISTS source_table1;
DROP TABLE IF EXISTS source_table2;
DROP TABLE IF EXISTS distributed_table1;
DROP TABLE IF EXISTS distributed_table2;
CREATE TABLE source_table1 (a Int64, b String) ENGINE = Memory;
CREATE TABLE source_table2 (c Int64, d String) ENGINE = Memory;
INSERT INTO source_table1 VALUES (42, 'qwe');
INSERT INTO source_table2 VALUES (42, 'qwe');
