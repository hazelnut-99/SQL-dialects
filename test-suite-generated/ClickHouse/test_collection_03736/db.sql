DROP TABLE IF EXISTS fuse_tbl;
CREATE TABLE fuse_tbl(a Nullable(Int8), b Int8) Engine = Log;
INSERT INTO fuse_tbl VALUES (1, 1), (2, 2), (NULL, 3);
