select s1.x, s2.x from (select 1 as x) s1 left join (select 1 as x) s2 using x;
