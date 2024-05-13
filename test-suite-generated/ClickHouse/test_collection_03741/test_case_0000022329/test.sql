SELECT * FROM (SELECT [[0]] AS id) AS subquery ARRAY JOIN id AS id_nested_array ARRAY JOIN id_nested_array AS id INNER JOIN test_table USING (id);
