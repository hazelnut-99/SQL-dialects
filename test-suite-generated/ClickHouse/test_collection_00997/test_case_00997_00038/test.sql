SELECT * FROM (SELECT number + 2 AS key FROM numbers(4)) s1 FULL JOIN dict_flat d USING(key) ORDER BY s1.key, d.key;
