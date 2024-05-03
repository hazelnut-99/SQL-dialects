select t.a, t.a, t.b as t_b from t
left join s on t.a = s.a
left join y on y.b = s.b
order by t.a
format PrettyCompactNoEscapes;
