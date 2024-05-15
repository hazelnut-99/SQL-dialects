select sum(j), avg(k) from x where i in (select number from numbers(4));
