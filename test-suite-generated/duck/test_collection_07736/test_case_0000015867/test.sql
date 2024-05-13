SELECT sum(unique1) over (order by unique1 rows between 5 following and 10 following) su FROM tenk1 order by unique1;
