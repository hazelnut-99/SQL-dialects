select x1, x1 * 2, max(x2), max(x3) from test2 group by 2, 1, x1 order by 1, 2, 4 desc, 3 asc;
