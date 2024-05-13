with 1 as x select x;
with 1 as x select * from (select x);
with 1 as x select *, x from (with 2 as x select x as y);
with 1 as x select x union all select x;
