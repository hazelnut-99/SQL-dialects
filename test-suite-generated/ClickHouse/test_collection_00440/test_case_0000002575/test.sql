select count() from t1 where c1 in (select 'BBBBBB' union all select null);
