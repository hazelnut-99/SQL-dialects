SELECT * FROM (SELECT [1] AS id) AS subquery_1 ARRAY JOIN id INNER JOIN (SELECT 1 AS id) AS subquery_2 USING (id);
