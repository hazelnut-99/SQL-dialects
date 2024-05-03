DROP TABLE IF EXISTS data;
CREATE TABLE data (s String, x Int8, y Int8) ENGINE = MergeTree ORDER BY tuple();
INSERT INTO data VALUES ('hello', 0, 0), ('world', 0, 0), ('hello', 1, -1), ('world', -1, 1);
