DROP TABLE IF EXISTS fuse_tbl;
CREATE TABLE fuse_tbl(a Nullable(Int32), b Int32) Engine = Log;
INSERT INTO fuse_tbl SELECT number, number + 1 FROM numbers(1000);
