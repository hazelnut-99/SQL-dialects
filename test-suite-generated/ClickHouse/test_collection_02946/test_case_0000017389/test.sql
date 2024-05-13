select count() from (select 1 except select 2) limit 100;
