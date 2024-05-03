select y.a, y.a, y.b as y_b, y.b from t
left join s on s.a = t.a
left join y on y.b = s.b
order by t.a
format PrettyCompactNoEscapes;
