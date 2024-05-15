SELECT sum(unique1) over (order by unique1 rows between 1 following and 3 following) su FROM tenk1 order by unique1;
