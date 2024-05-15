SELECT * FROM (SELECT [0] AS id) AS subquery ARRAY JOIN [1] AS id INNER JOIN test_table USING (id);
