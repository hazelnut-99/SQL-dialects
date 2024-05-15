SELECT * FROM (SELECT number + 2 AS key FROM numbers(4)) s FULL JOIN test t USING(key) ORDER BY s.key, t.key;
