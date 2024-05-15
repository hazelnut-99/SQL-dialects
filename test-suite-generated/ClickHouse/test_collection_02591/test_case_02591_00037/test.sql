SELECT *, id FROM (SELECT [0] AS value) AS subquery ARRAY JOIN value AS id INNER JOIN test_table USING (id);
