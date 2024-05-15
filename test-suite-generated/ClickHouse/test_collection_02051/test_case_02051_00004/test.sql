select * from (select 1 union all select 2 union all select 3 union all select 4 intersect select 3 union all select 5 except select 1) order by 1;
