SELECT * FROM (SELECT number AS key FROM numbers(2)) s1 ANTI RIGHT JOIN dict_flat d USING(key) ORDER BY key;
