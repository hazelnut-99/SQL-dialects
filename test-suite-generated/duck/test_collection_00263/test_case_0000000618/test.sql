select count(a) from (select * from t1 union select * from t2) t_union;
