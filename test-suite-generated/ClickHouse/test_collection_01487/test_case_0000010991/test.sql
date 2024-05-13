SELECT * FROM (SELECT number AS key FROM numbers(5)) s1 LEFT JOIN dict_hashed d ON s1.key = d.key ORDER BY s1.key;
