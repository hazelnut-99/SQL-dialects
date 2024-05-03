WITH a AS (SELECT number FROM numbers(1)), b AS (SELECT number FROM a) SELECT * FROM b as l, a as r;
