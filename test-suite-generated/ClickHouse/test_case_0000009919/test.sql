select * from (select * from (with a * 2 as c select a, b from wt order by c limit 3 with ties) order by a, b);
