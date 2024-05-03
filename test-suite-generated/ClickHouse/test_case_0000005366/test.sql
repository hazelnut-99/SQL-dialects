SELECT toIntervalMinute(lc), toTypeName(materialize(r.lc)) FROM t1 AS l INNER JOIN t2 as r USING (lc);
