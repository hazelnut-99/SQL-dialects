select count() from (select throwIf(count() != 2) from t2 group by a);
