SELECT r, r//3, mode(r//3) over (order by r rows between 1 preceding and 3 following) FROM modes ORDER BY 1, 2;
