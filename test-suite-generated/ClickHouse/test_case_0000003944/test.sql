SELECT DISTINCT b FROM (SELECT a, b FROM d GROUP BY a, b) order by b;
