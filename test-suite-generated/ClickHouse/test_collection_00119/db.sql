DROP TABLE IF EXISTS test1_00395;
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(
col1 UInt64, col2 Nullable(UInt64),
col3 String, col4 Nullable(String),
col5 Array(UInt64), col6 Array(Nullable(UInt64)),
col7 Array(String), col8 Array(Nullable(String)),
d Date) Engine = Memory;
INSERT INTO test1_00395 VALUES (1, 1, 'a', 'a', [1], [1], ['a'], ['a'], '2000-01-01');
INSERT INTO test1_00395 VALUES (1, NULL, 'a', 'a', [1], [1], ['a'], ['a'], '2000-01-01');
INSERT INTO test1_00395 VALUES (1, 1, 'a', NULL, [1], [1], ['a'], ['a'], '2000-01-01');
INSERT INTO test1_00395 VALUES (1, 1, 'a', 'a', [1], [NULL], ['a'], ['a'], '2000-01-01');
INSERT INTO test1_00395 VALUES (1, 1, 'a', 'a', [1], [1], ['a'], [NULL], '2000-01-01');
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(
col1 UInt64, col2 Nullable(UInt64),
col3 String, col4 Nullable(String),
col5 Array(UInt64), col6 Array(Nullable(UInt64)),
col7 Array(String), col8 Array(Nullable(String)),
d Date) Engine = TinyLog;
INSERT INTO test1_00395 VALUES (1, 1, 'a', 'a', [1], [1], ['a'], ['a'], '2000-01-01');
INSERT INTO test1_00395 VALUES (1, NULL, 'a', 'a', [1], [1], ['a'], ['a'], '2000-01-01');
INSERT INTO test1_00395 VALUES (1, 1, 'a', NULL, [1], [1], ['a'], ['a'], '2000-01-01');
INSERT INTO test1_00395 VALUES (1, 1, 'a', 'a', [1], [NULL], ['a'], ['a'], '2000-01-01');
INSERT INTO test1_00395 VALUES (1, 1, 'a', 'a', [1], [1], ['a'], [NULL], '2000-01-01');
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(
col1 UInt64, col2 Nullable(UInt64),
col3 String, col4 Nullable(String),
col5 Array(UInt64), col6 Array(Nullable(UInt64)),
col7 Array(String), col8 Array(Nullable(String)),
d Date) Engine = Log;
INSERT INTO test1_00395 VALUES (1, 1, 'a', 'a', [1], [1], ['a'], ['a'], '2000-01-01');
INSERT INTO test1_00395 VALUES (1, NULL, 'a', 'a', [1], [1], ['a'], ['a'], '2000-01-01');
INSERT INTO test1_00395 VALUES (1, 1, 'a', NULL, [1], [1], ['a'], ['a'], '2000-01-01');
INSERT INTO test1_00395 VALUES (1, 1, 'a', 'a', [1], [NULL], ['a'], ['a'], '2000-01-01');
INSERT INTO test1_00395 VALUES (1, 1, 'a', 'a', [1], [1], ['a'], [NULL], '2000-01-01');
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(
col1 UInt64, col2 Nullable(UInt64),
col3 String, col4 Nullable(String),
col5 Array(UInt64), col6 Array(Nullable(UInt64)),
col7 Array(String), col8 Array(Nullable(String)),
d Date) Engine = StripeLog;
INSERT INTO test1_00395 VALUES (1, 1, 'a', 'a', [1], [1], ['a'], ['a'], '2000-01-01');
INSERT INTO test1_00395 VALUES (1, NULL, 'a', 'a', [1], [1], ['a'], ['a'], '2000-01-01');
INSERT INTO test1_00395 VALUES (1, 1, 'a', NULL, [1], [1], ['a'], ['a'], '2000-01-01');
INSERT INTO test1_00395 VALUES (1, 1, 'a', 'a', [1], [NULL], ['a'], ['a'], '2000-01-01');
INSERT INTO test1_00395 VALUES (1, 1, 'a', 'a', [1], [1], ['a'], [NULL], '2000-01-01');
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 Array(Nullable(UInt64))) Engine=Memory;
INSERT INTO test1_00395(col1) VALUES ([1+1]);
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 Nullable(UInt64), col2 UInt64) Engine=Memory;
DROP TABLE IF EXISTS test2;
CREATE TABLE test2(col1 UInt64, col2 Nullable(UInt64)) Engine=Memory;
INSERT INTO test1_00395(col1,col2) VALUES (2,7)(6,9)(5,1)(4,3)(8,2);
INSERT INTO test2(col1,col2) SELECT col1,col2 FROM test1_00395;
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 Nullable(UInt64), col2 Nullable(UInt64)) Engine=Memory;
INSERT INTO test1_00395(col1,col2) VALUES (2,7)(NULL,6)(9,NULL)(NULL,NULL)(5,1)(42,42);
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395 (col1 Nullable(String)) ENGINE=TinyLog;
INSERT INTO test1_00395 VALUES ('a'), ('b'), ('c'), (NULL);
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 Nullable(Int8), col2 Nullable(UInt16), col3 Nullable(Float32)) Engine=TinyLog;
INSERT INTO test1_00395(col1,col2,col3) VALUES (toInt8(1),toUInt16(2),toFloat32(3))(NULL,toUInt16(1),toFloat32(2))(toInt8(1),NULL,toFloat32(2))(toInt8(1),toUInt16(2),NULL);
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(cond1 Nullable(UInt8), then1 Int8, cond2 UInt8, then2 Nullable(UInt16), then3 Nullable(Float32)) Engine=TinyLog;
INSERT INTO test1_00395(cond1,then1,cond2,then2,then3) VALUES(1,1,1,42,99)(0,7,1,99,42)(NULL,6,2,99,NULL);
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 UInt64) Engine=TinyLog;
INSERT INTO test1_00395(col1) VALUES(1),(2),(3),(4);
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 Array(Nullable(UInt64))) Engine=TinyLog;
INSERT INTO test1_00395(col1) VALUES([2,3,7,NULL]);
INSERT INTO test1_00395(col1) VALUES([NULL,3,7,4]);
INSERT INTO test1_00395(col1) VALUES([2,NULL,7,NULL]);
INSERT INTO test1_00395(col1) VALUES([2,3,NULL,4]);
INSERT INTO test1_00395(col1) VALUES([NULL,NULL,NULL,NULL]);
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 Array(Nullable(String))) Engine=TinyLog;
INSERT INTO test1_00395(col1) VALUES(['a','bc','def',NULL]);
INSERT INTO test1_00395(col1) VALUES([NULL,'bc','def','ghij']);
INSERT INTO test1_00395(col1) VALUES(['a',NULL,'def',NULL]);
INSERT INTO test1_00395(col1) VALUES(['a','bc',NULL,'ghij']);
INSERT INTO test1_00395(col1) VALUES([NULL,NULL,NULL,NULL]);
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 Array(Nullable(UInt64)), col2 UInt64) Engine=TinyLog;
INSERT INTO test1_00395(col1,col2) VALUES([2,3,7,NULL], 1);
INSERT INTO test1_00395(col1,col2) VALUES([NULL,3,7,4], 2);
INSERT INTO test1_00395(col1,col2) VALUES([2,NULL,7,NULL], 3);
INSERT INTO test1_00395(col1,col2) VALUES([2,3,NULL,4],4);
INSERT INTO test1_00395(col1,col2) VALUES([NULL,NULL,NULL,NULL],3);
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 Array(Nullable(String)), col2 UInt64) Engine=TinyLog;
INSERT INTO test1_00395(col1,col2) VALUES(['a','bc','def',NULL], 1);
INSERT INTO test1_00395(col1,col2) VALUES([NULL,'bc','def','ghij'], 2);
INSERT INTO test1_00395(col1,col2) VALUES(['a',NULL,'def','ghij'], 3);
INSERT INTO test1_00395(col1,col2) VALUES(['a','bc',NULL,'ghij'],4);
INSERT INTO test1_00395(col1,col2) VALUES([NULL,NULL,NULL,NULL],3);
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 UInt64) Engine=TinyLog;
INSERT INTO test1_00395(col1) VALUES(1),(2),(3),(4);
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 Nullable(UInt64)) Engine=TinyLog;
INSERT INTO test1_00395(col1) VALUES(1),(2),(3),(4),(NULL);
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 String) Engine=TinyLog;
INSERT INTO test1_00395(col1) VALUES('a'),('bc'),('def'),('ghij');
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 Nullable(String)) Engine=TinyLog;
INSERT INTO test1_00395(col1) VALUES('a'),('bc'),('def'),('ghij'),(NULL);
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 Array(Nullable(UInt64))) Engine=TinyLog;
INSERT INTO test1_00395(col1) VALUES([2,3,7,NULL]);
INSERT INTO test1_00395(col1) VALUES([NULL,3,7,4]);
INSERT INTO test1_00395(col1) VALUES([2,NULL,7,NULL]);
INSERT INTO test1_00395(col1) VALUES([2,3,NULL,4]);
INSERT INTO test1_00395(col1) VALUES([NULL,NULL,NULL,NULL]);
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 Array(Nullable(String))) Engine=TinyLog;
INSERT INTO test1_00395(col1) VALUES(['a','bc','def',NULL]);
INSERT INTO test1_00395(col1) VALUES([NULL,'bc','def','ghij']);
INSERT INTO test1_00395(col1) VALUES(['a',NULL,'def',NULL]);
INSERT INTO test1_00395(col1) VALUES(['a','bc',NULL,'ghij']);
INSERT INTO test1_00395(col1) VALUES([NULL,NULL,NULL,NULL]);
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 Array(Nullable(UInt64)), col2 UInt64) Engine=TinyLog;
INSERT INTO test1_00395(col1,col2) VALUES([2,3,7,NULL], 2);
INSERT INTO test1_00395(col1,col2) VALUES([NULL,3,7,4], 3);
INSERT INTO test1_00395(col1,col2) VALUES([2,NULL,7,NULL], 7);
INSERT INTO test1_00395(col1,col2) VALUES([2,3,NULL,4],5);
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 Array(Nullable(UInt64)), col2 Nullable(UInt64)) Engine=TinyLog;
INSERT INTO test1_00395(col1,col2) VALUES([2,3,7,NULL], 2);
INSERT INTO test1_00395(col1,col2) VALUES([NULL,3,7,4], 3);
INSERT INTO test1_00395(col1,col2) VALUES([2,NULL,7,NULL], 7);
INSERT INTO test1_00395(col1,col2) VALUES([2,3,NULL,4],5);
INSERT INTO test1_00395(col1,col2) VALUES([NULL,NULL,NULL,NULL],NULL);
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 Array(Nullable(String)), col2 String) Engine=TinyLog;
INSERT INTO test1_00395(col1,col2) VALUES(['a','bc','def',NULL], 'a');
INSERT INTO test1_00395(col1,col2) VALUES([NULL,'bc','def','ghij'], 'bc');
INSERT INTO test1_00395(col1,col2) VALUES(['a',NULL,'def','ghij'], 'def');
INSERT INTO test1_00395(col1,col2) VALUES(['a','bc',NULL,'ghij'], 'ghij');
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 Array(Nullable(String)), col2 Nullable(String)) Engine=TinyLog;
INSERT INTO test1_00395(col1,col2) VALUES(['a','bc','def',NULL], 'a');
INSERT INTO test1_00395(col1,col2) VALUES([NULL,'bc','def','ghij'], 'bc');
INSERT INTO test1_00395(col1,col2) VALUES(['a',NULL,'def','ghij'], 'def');
INSERT INTO test1_00395(col1,col2) VALUES(['a','bc',NULL,'ghij'], 'ghij');
INSERT INTO test1_00395(col1,col2) VALUES([NULL,NULL,NULL,NULL], NULL);
DROP TABLE IF EXISTS test1_00395;
CREATE TABLE test1_00395(col1 Nullable(String), col2 Nullable(UInt8), col3 String) ENGINE=TinyLog;
INSERT INTO test1_00395(col1,col2,col3) VALUES('A', 0, 'ABCDEFGH');
INSERT INTO test1_00395(col1,col2,col3) VALUES('A', 0, 'BACDEFGH');
INSERT INTO test1_00395(col1,col2,col3) VALUES('A', 1, 'BCADEFGH');
INSERT INTO test1_00395(col1,col2,col3) VALUES('A', 1, 'BCDAEFGH');
INSERT INTO test1_00395(col1,col2,col3) VALUES('B', 1, 'BCDEAFGH');
INSERT INTO test1_00395(col1,col2,col3) VALUES('B', 1, 'BCDEFAGH');
INSERT INTO test1_00395(col1,col2,col3) VALUES('B', 1, 'BCDEFGAH');
INSERT INTO test1_00395(col1,col2,col3) VALUES('B', 1, 'BCDEFGHA');
INSERT INTO test1_00395(col1,col2,col3) VALUES('C', 1, 'ACBDEFGH');
INSERT INTO test1_00395(col1,col2,col3) VALUES('C', NULL, 'ACDBEFGH');
INSERT INTO test1_00395(col1,col2,col3) VALUES('C', NULL, 'ACDEBFGH');
INSERT INTO test1_00395(col1,col2,col3) VALUES('C', NULL, 'ACDEFBGH');
INSERT INTO test1_00395(col1,col2,col3) VALUES(NULL, 1, 'ACDEFGBH');
INSERT INTO test1_00395(col1,col2,col3) VALUES(NULL, NULL, 'ACDEFGHB');
