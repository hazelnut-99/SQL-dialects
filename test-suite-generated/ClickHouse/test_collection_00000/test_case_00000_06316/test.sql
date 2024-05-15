SELECT toTypeName(x) FROM (SELECT 'hello' AS x UNION ALL SELECT toLowCardinality('hello'));
