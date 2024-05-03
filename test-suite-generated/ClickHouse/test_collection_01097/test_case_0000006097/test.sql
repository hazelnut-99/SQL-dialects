select Y.*, s.* from Y inner join (select * from Y) as s on concat('n', Y.y_a) = s.y_b order by Y.id, Y.y_a, Y.y_b, s.id, s.y_a, s.y_b;
