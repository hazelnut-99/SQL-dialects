SELECT x, lc, materialize(r.lc) y, toTypeName(y) FROM t AS l RIGHT JOIN nr AS r USING (lc) ORDER BY x;
