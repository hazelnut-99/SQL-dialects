select * from (select materialize(2) as x) s1 left join (select 2 as x) s2 using x;
