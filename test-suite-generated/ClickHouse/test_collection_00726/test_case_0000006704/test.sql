select a,b,s_a,s_b from t_00725_2 all left join (select a, b, a s_a, b s_b from s_00725_2) s_00725_2 on (s_00725_2.a = t_00725_2.a and s_00725_2.b = t_00725_2.b);
