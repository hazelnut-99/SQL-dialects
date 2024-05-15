SELECT * FROM (SELECT [0] AS id) AS subquery_1 ARRAY JOIN id INNER JOIN (SELECT 0 AS id) AS subquery_2 USING (id);
