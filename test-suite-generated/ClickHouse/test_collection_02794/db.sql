DROP TABLE IF EXISTS t1;
DROP TABLE IF EXISTS t2;
DROP TABLE IF EXISTS t3;
CREATE TABLE t1 (`1a` Nullable(Int64), `2b` Nullable(String)) engine = Memory;
CREATE TABLE t2 (`3c` Nullable(Int64), `4d` Nullable(String)) engine = Memory;
CREATE TABLE t3 (`5e` Nullable(Int64), `6f` Nullable(String)) engine = Memory;
