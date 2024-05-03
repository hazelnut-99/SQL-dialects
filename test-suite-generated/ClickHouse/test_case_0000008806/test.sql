select t.a, s.b, s.a, s.b, y.a, y.b from t
left join s on (t.a = s.a and s.b = t.b)
left join y on (y.a = s.a and y.b = s.b)
order by t.a
format PrettyCompactNoEscapes;
