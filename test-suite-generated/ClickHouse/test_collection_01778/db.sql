DROP TABLE IF EXISTS foo;
DROP TABLE IF EXISTS foo_merge;
DROP TABLE IF EXISTS t2;
CREATE TABLE foo(Id Int32, Val Int32) Engine=MergeTree PARTITION BY Val ORDER BY Id;
INSERT INTO foo SELECT number, number%5 FROM numbers(100000);
CREATE TABLE foo_merge as foo ENGINE=Merge(currentDatabase(), '^foo');
CREATE TABLE t2 (Id Int32, Val Int32, X Int32) Engine=Memory;
INSERT INTO t2 values (4, 3, 4);
