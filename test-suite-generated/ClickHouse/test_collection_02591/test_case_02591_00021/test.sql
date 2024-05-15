SELECT * FROM (SELECT [0] AS id) AS subquery ARRAY JOIN id INNER JOIN test_table USING (id);
