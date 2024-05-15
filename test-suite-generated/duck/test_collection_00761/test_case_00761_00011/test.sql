SELECT * from t1 using sample reservoir(100) repeatable (1) order by a;
