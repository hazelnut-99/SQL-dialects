CREATE TABLE t (t TEXT);
INSERT INTO t VALUES ('foo'), ('bar'), ('baz');
CREATE TABLE integers("COL1" INTEGER, "COL2" INTEGER);
CREATE TABLE tbl AS SELECT * FROM integers;
DROP TABLE tbl;
CREATE TABLE tbl AS SELECT COL1, COL2 FROM integers;
DROP TABLE tbl;
CREATE TABLE tbl AS SELECT integers.COL1, integers.COL2 FROM integers;
