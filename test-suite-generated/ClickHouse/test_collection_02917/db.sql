CREATE TABLE my_table (values Array(Int32)) ENGINE = MergeTree() ORDER BY values;
INSERT INTO my_table (values) VALUES ([12, 3, 1]);
