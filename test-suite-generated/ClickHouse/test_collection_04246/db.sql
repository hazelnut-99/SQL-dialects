DROP TABLE IF EXISTS test_d;
DROP TABLE IF EXISTS test;
CREATE TABLE test (id UInt64, date Date)
ENGINE = MergeTree
ORDER BY id;
insert into test select *, today() from numbers(100);
insert into test select *, today() from numbers(100);
