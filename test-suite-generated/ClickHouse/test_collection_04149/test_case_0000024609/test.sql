SELECT value FROM (SELECT stddevSamp(id) AS value FROM test_table) as subquery
WHERE ((value = value) AND (NOT (value = value)));
