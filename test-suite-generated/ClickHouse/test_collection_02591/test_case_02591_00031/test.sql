SELECT *, id FROM (SELECT [1] AS id) AS subquery ARRAY JOIN id AS id INNER JOIN test_table USING (id);
