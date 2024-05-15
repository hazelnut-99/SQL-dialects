SELECT * FROM (SELECT SUM(i) AS x FROM integers) a, (SELECT SUM(i) AS x FROM integers) b WHERE a.x=b.x;
