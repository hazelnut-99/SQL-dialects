CREATE TABLE t (t TEXT);
INSERT INTO t VALUES ('foo'), ('bar'), ('baz');
CREATE TABLE integers("COL1" INTEGER, "COL2" INTEGER);
CREATE TABLE tbl AS SELECT * FROM integers;
