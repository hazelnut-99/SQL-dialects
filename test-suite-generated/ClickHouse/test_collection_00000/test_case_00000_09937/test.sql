SELECT 'y', * FROM (SELECT count('y'), count('y'), 2 AS x) AS t1 RIGHT JOIN (SELECT count('x'), count('y'), 3 AS x) AS t2 ON t1.x = t2.x;
