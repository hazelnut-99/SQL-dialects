SELECT id, left.n IS NULL, right.n IS NULL FROM t_func_to_subcolumns AS left
FULL JOIN (SELECT 1 AS id, 'qqq' AS n UNION ALL SELECT 3 AS id, 'www') AS right USING(id);
