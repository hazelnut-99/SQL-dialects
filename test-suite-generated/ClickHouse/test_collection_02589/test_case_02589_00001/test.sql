SELECT avg(a), sum(a) FROM (SELECT a FROM fuse_tbl WHERE isNull(a));
