select t.*, s.* from t left join s on (s.a=t.a and t.b=s.b) order by t.a;
