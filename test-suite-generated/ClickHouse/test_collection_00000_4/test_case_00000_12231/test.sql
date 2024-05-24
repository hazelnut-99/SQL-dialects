SELECT a FROM ( select 1 AS a UNION ALL select 1 as a ) AS t1, ( select 2 AS b, 3 AS c) AS t2;
