SELECT * FROM ( SELECT count('a'), count('b'), count('c'), 2 AS x ) as t1 RIGHT JOIN ( SELECT  count('x'), count('y'), 0 AS x ) AS t2 ON t1.x = t2.x;
