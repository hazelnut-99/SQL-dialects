select t.a as t_a from t
left join s on s.a = t_a
order by t.a
format PrettyCompactNoEscapes;
