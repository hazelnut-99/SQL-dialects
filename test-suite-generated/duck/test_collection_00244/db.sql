create temporary table t as select range a, length(range::varchar) b, mod(range,10000) c, 5 d, 10000 e from range(100000);
explain select count(*) from t where b in (1,2,3) ;
explain select count(*) from t where b <=3 and b>=0;
