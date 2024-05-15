SELECT r, median('prefix-' || r::VARCHAR || '-suffix') over (order by r rows between 1 preceding and 1 following) FROM quantiles ORDER BY 1, 2;
