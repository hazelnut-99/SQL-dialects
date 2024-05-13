SELECT t.x, l.s, r.s, toTypeName(l.s), toTypeName(r.s) FROM nr AS l FULL JOIN t AS r USING (x) ORDER BY t.x;
