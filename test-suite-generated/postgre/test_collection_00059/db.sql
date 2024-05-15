/*
 * 1.1. test CREATE INDEX with buffered build
 */

CREATE TABLE tbl_gist (c1 int, c2 int, c3 int, c4 box);
INSERT INTO tbl_gist SELECT x, 2*x, 3*x, box(point(x,x+1),point(2*x,2*x+1)) FROM generate_series(1,8000) AS x;
CREATE INDEX tbl_gist_idx ON tbl_gist using gist (c4) INCLUDE (c1,c2,c3);
