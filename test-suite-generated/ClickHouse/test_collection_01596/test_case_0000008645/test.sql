WITH a AS (SELECT number FROM numbers(1)), b AS (SELECT number FROM a) SELECT * FROM a as l, b as r;
