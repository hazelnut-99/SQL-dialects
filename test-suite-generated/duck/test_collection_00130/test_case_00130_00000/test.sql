SELECT * FROM t1 as t1_alias inner join (select * from t2) as t2_alias ON (eq(x := t1_alias.a, y := t2_alias.c));
