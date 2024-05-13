SELECT * FROM (SELECT [0] AS id) AS subquery ARRAY JOIN id AS id INNER JOIN test_table USING (id);
