SELECT t.x, l.s, r.s, toTypeName(l.s), toTypeName(r.s) FROM t AS l RIGHT JOIN nr AS r USING (x) ORDER BY t.x;
