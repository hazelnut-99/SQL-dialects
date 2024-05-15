SELECT sum(unique1) over (order by unique1 rows between 2 preceding and 1 preceding) su FROM tenk1 order by unique1;
