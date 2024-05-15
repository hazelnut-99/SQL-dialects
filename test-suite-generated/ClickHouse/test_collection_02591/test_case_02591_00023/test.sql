SELECT * FROM (SELECT [1] AS id) AS subquery ARRAY JOIN id INNER JOIN test_table USING (id);
