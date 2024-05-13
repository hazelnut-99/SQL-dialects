SELECT COLUMNS('id') FROM (SELECT 1 AS id, 2 AS value) AS subquery_1, (SELECT 3 AS id, 4 AS value) AS subquery_2;
