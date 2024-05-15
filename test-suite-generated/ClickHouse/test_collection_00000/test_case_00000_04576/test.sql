select * from (select 3 as x) s1 left join (select materialize(3) as x) s2 using x;
