select s.a, s.a, s.b as s_b, s.b from t
left join s on s.a = t.a
left join y on s.b = y.b
order by t.a, s.a, s.b;
