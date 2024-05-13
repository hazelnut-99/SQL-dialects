SELECT * FROM (SELECT number AS key FROM numbers(5)) s1 ANTI JOIN dict_hashed d USING(key) ORDER BY key;
