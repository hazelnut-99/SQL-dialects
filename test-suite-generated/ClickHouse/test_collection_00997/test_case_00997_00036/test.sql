SELECT * FROM (SELECT number AS key FROM numbers(2)) s1 RIGHT JOIN dict_flat d ON s1.key = d.key ORDER BY d.key;
