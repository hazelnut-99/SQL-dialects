SELECT * FROM (SELECT number AS key FROM numbers(2)) s1 JOIN dict_flat d USING(key);
