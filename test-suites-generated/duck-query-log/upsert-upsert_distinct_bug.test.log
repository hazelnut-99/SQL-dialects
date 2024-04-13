CREATE TABLE test_table_raw(id VARCHAR, name VARCHAR);;
INSERT INTO test_table_raw VALUES
	('abc001','foo'),
	('abc002','bar'),
	('abc001','foo2'),
	('abc002','bar2');;
CREATE TABLE test_table(id VARCHAR PRIMARY KEY, name VARCHAR);;
INSERT INTO test_table
SELECT
  DISTINCT(id) as id,
  name
FROM test_table_raw;;
INSERT INTO test_table
SELECT
  DISTINCT(id) as id,
  name
FROM test_table_raw;;
INSERT OR IGNORE INTO test_table
SELECT
  DISTINCT(id) as id,
  name
FROM test_table_raw;;
SELECT * FROM test_table_raw;;
