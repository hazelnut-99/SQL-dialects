select 1 intersect select count() from (select 1 except select 2 intersect select 2 union all select 1);
