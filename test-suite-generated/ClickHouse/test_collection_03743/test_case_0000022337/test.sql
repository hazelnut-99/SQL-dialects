SELECT quantile(0.5)(b), quantile(0.9)(b) from (SELECT x + 1 as b FROM (SELECT quantile(0.5)(b) as x, quantile(0.9)(b) FROM fuse_tbl) GROUP BY x);
