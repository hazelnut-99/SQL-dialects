select s.*, j.* from (select * from X) as s left join (select * from Y) as j on s.id = j.id order by s.id, s.x_a, s.x_b, j.id, j.y_a, j.y_b;
