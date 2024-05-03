select t.a, s.a as s_a from t
left join s on s.a = t.a
left join y on y.b = s.b
order by t.a
format PrettyCompactNoEscapes;
