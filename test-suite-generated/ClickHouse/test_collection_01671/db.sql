DROP TABLE IF EXISTS test;
CREATE TABLE test (type Enum('x'), s String) ENGINE = MergeTree ORDER BY s PARTITION BY type;
INSERT INTO test VALUES ('x', 'Hello');
