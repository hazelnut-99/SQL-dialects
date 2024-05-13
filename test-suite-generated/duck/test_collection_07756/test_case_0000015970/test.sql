SELECT r % 2, r, r//3, mode(r//3) over (partition by r % 2 order by r) FROM modes ORDER BY 1, 2;
