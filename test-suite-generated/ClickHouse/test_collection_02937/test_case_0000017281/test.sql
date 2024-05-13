SELECT * FROM (SELECT 1 as a) as t1 INNER JOIN  ( SELECT ('b', 256) as b ) AS t2 ON NULL;
