SELECT *, toTypeName(t1.id), toTypeName(t3.id) FROM t1_00848 t1 FULL JOIN t3_00848 t3 USING(id) ORDER BY t1.id, t3.id;
