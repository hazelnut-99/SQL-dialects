DROP TABLE IF EXISTS t1;
DROP TABLE IF EXISTS t2;
CREATE TABLE t1 ( x Int ) Engine = Memory;
INSERT INTO t1 VALUES ( 1 ), ( 2 ), ( 3 );
CREATE TABLE t2 ( x Int ) Engine = Memory;
INSERT INTO t2 VALUES ( 2 ), ( 3 ), ( 4 );
