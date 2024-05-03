select s.*, j.* from (select * from X) as s inner join (select * from Y) as j using id order by s.id, s.id, s.x_name, j.y_name;
