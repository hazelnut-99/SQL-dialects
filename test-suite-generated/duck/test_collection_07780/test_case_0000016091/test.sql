SELECT r % 2 as p, r, r/3.0, mad(r/3.0) over (partition by r % 2 order by r)
FROM mads ORDER BY 1, 2;
