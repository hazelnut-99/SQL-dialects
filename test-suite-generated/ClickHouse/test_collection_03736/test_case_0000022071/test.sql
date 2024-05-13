SELECT avg(b) * 3, sum(b) + 1 + count(b), count(b) * count(b), count() FROM (SELECT b FROM fuse_tbl);
