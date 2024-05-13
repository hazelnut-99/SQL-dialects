SELECT *, toTypeName(t2.id), toTypeName(t3.id) FROM t2_00848 t2 FULL JOIN t3_00848 t3 USING(id) ORDER BY id;
