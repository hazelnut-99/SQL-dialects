select t.* from t left join s on (t.a=s.a and t.b=s.b) order by t.a;
