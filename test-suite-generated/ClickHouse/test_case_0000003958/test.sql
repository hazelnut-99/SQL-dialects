select 1 as x from t_str where cast('1970-01-01' as date) <= cast((select max('1970-01-01') from numbers(1)) as date);
