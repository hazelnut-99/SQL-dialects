SELECT * FROM (SELECT number AS key FROM numbers(2)) s1 JOIN dict_hashed d USING(key);
