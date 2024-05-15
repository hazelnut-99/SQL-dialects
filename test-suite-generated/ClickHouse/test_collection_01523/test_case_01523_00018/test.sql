select count() over () from (select 1 a) l inner join (select 2 a) r using a;
