select count() from numbers(10) where exists(select 1 intersect select 1);
