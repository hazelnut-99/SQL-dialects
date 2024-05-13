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
