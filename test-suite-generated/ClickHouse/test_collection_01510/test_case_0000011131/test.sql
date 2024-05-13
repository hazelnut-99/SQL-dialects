SELECT x, lc, r.lc, toTypeName(r.lc) FROM t AS l FULL JOIN nr AS r USING (x) ORDER BY x;
