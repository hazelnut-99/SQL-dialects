SELECT r, median(r) over (order by r rows between 1 preceding and 3 following) FROM quantiles ORDER BY 1, 2;
