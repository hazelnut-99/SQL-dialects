select X.*, s.* from X left join (select * from X) as s on X.id = s.x_b order by X.id, X.x_a, X.x_b, s.id, s.x_a, s.x_b;
