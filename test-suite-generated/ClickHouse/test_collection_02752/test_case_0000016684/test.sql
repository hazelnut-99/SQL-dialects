select date, a, b from t1 where (date, a, b) NOT IN (select date,a,b from t2);
