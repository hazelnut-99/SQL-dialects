select * from (select * from (select a * 2 as c, b from wt order by c limit 3 with ties) order by c, b);
