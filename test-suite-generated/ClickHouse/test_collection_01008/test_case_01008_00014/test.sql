SELECT x, lc, r.lc, toTypeName(r.lc) FROM t AS l FULL JOIN nr AS r USING (lc) ORDER BY x;
