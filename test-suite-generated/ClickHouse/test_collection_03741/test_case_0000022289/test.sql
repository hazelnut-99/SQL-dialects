SELECT * FROM (SELECT [5] AS id) AS subquery_1 ARRAY JOIN [1,2,3] AS id INNER JOIN (SELECT 1 AS id) AS subquery_2 USING (id);
