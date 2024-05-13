SELECT * FROM (SELECT [5] AS id_array) AS subquery ARRAY JOIN id_array, [0] AS id INNER JOIN test_table USING (id);
