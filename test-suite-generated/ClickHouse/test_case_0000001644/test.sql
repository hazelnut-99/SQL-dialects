SELECT repeat('a', DISTINCT) FROM (SELECT number AS DISTINCT FROM numbers(10));
