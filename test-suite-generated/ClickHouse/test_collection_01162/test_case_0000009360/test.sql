select * from (select 5 as x) s1 left join (select toLowCardinality(5) as x) s2 using x;
