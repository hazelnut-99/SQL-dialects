SELECT r, quantile(r::VARCHAR, 0.5) over (order by r rows between 1 preceding and 3 following) FROM quantiles ORDER BY 1, 2;
