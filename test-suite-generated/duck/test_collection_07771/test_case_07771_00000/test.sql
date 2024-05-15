SELECT r % 2, r, median(r) over (partition by r % 2 order by r) FROM quantiles ORDER BY 1, 2;
