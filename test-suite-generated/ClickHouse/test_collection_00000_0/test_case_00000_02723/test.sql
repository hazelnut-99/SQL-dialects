select count() from view(select 1 union all (select 2 union all select 3));
