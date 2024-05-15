select makeDate32(year, month, day) from (select 1984 as year, 2 as month, 3 as day union all select 1984 as year, 2 as month, 4 as day) order by year, month, day;
