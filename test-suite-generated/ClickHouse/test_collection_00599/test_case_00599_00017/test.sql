select * from t left outer join s on (t.a=s.a and t.b=s.b) where s.a is null;
