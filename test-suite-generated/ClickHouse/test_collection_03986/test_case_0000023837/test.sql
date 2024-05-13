SELECT a FROM ( select 1 AS a UNION ALL select 1 as a ) AS t1, ( select 2 AS b, 3 AS c UNION ALL select 2 as b, 3 as c) AS t2;
