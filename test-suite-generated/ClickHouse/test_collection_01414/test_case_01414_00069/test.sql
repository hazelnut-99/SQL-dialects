select count() from t1 where cast(c1 as Nullable(String)) in (select 'BBBBBB' union all select null);
