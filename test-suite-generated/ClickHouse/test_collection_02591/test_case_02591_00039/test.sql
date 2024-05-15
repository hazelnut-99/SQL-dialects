SELECT *, id FROM (SELECT [1] AS value) AS subquery ARRAY JOIN value AS id INNER JOIN test_table USING (id);
