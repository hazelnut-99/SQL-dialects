SELECT * FROM (SELECT number AS key FROM numbers(2)) s1 ANY INNER JOIN dict_flat d USING(key) ORDER BY s1.key;
