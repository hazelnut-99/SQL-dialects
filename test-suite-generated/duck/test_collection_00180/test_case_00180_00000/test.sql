SELECT a.j,a.x,a.y,b.y FROM (SELECT j, MIN(i) AS y, SUM(i) AS x FROM groups GROUP BY j) a, (SELECT j, MIN(i) AS y, SUM(i) AS x FROM groups GROUP BY j) b WHERE a.j=b.j AND a.x=b.x ORDER BY a.j;
