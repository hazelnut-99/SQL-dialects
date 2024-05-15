select t.*, s.* from t left join s on (t.b=toInt64(2) and s.a=t.a) where t.b=2;
