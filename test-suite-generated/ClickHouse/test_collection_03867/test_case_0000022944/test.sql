select count() from (select throwIf(count() != 2) from t1 group by a);
