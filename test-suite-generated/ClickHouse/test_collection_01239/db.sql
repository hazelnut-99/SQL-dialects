DROP TABLE IF EXISTS t1;
DROP TABLE IF EXISTS t2;
CREATE TABLE t1 (x UInt32, s String) engine = Memory;
CREATE TABLE t2 (x UInt32, s String) engine = Memory;
INSERT INTO t1 (x, s) VALUES (0, 'a1'), (1, 'a2'), (2, 'a3'), (3, 'a4'), (4, 'a5'), (2, 'a6');
INSERT INTO t2 (x, s) VALUES (2, 'b1'), (2, 'b2'), (4, 'b3'), (4, 'b4'), (4, 'b5'), (5, 'b6');
