select * from (select toLowCardinality(4) as x) s1 left join (select 4 as x) s2 using x;
