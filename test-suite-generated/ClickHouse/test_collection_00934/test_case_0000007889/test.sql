select t.*, s.* from t left join s on (s.a=t.a and t.b=s.b and t.a=toInt64(2)) order by t.a;
