DROP TABLE IF EXISTS defaults;
CREATE TABLE defaults
(
	n1 UInt8,
	n2 UInt16,
	n3 UInt32,
	n4 UInt64
)ENGINE = Memory();
INSERT INTO defaults VALUES (1, 2, 3, 4) (12, 4345, 435, 1233) (45, 675, 32343, 54566) (90, 784, 9034, 778752);
DROP TABLE defaults;
DROP TABLE IF EXISTS test_string;
CREATE TABLE test_string
(
	s1 String,
	s2 String,
	s3 FixedString(10),
	s4 FixedString(10),
) ENGINE = Memory;
INSERT INTO test_string VALUES ('hello', 'hello', 'hello', 'hello') ('hello', 'hellow', 'hello', 'hellow') ('clickhouse', '012345', 'clickhouse', '012345');
