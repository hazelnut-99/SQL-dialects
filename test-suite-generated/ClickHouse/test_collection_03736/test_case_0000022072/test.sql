SELECT sum(b), count(b) from (SELECT x as b FROM (SELECT sum(b) as x, count(b)  FROM fuse_tbl) );
