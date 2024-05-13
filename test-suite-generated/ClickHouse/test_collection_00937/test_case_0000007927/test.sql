select t.a, t.a as t_a, max(s.a) from t
left join s on t.a = s.a
left join y on y.b = s.b
group by t.a order by t.a;
