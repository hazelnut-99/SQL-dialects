select s.*, j.* from (select * from X) as s right join (select * from Y) as j using id order by s.id, j.id, s.x_name, j.y_name;
