select count(a) from (select * from t1 union all select * from t2) t_union;
