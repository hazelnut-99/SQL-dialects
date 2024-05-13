SELECT 'select count(case'a union all select 'when a='||range||' then 1' from range(100) union all select 'end) from t' LIMIT 5;
