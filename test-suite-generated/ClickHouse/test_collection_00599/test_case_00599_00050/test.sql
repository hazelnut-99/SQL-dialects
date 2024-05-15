select t.*, s.* from t left join s on (t.b=toInt64(1) and s.a=t.a) where s.b=1;
