SELECT r, r/3.0, mad(r/3.0) over (order by r rows between 1 preceding and 1 following)
FROM mads ORDER BY 1, 2;
