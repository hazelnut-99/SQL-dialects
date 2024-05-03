select count() from numbers(10) where exists(select 1 except select 1);
