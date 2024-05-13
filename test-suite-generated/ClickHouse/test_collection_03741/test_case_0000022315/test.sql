SELECT *, id FROM (SELECT [0] AS id) AS subquery ARRAY JOIN [0] AS id INNER JOIN test_table USING (id);
