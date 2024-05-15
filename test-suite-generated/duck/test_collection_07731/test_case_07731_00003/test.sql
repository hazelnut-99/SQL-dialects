SELECT sum(unique1) over (order by unique1 rows between unbounded preceding and 1 following) su FROM tenk1 order by unique1;
