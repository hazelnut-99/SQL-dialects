SELECT * from t1 using sample reservoir(6000) repeatable (1) order by a;
