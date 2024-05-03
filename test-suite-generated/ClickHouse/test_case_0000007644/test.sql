select max(s.a) from t
left join s on s.a = t.a
left join y on s.b = y.b
group by t.a order by t.a;
