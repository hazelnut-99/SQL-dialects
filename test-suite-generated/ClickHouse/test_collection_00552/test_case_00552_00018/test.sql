SELECT *, toTypeName(t2.id), toTypeName(t3.id) FROM t2_00848 t2 FULL JOIN t3_00848 t3 ON t2.id = t3.id ORDER BY t2.id, t3.id;
