SELECT grouping(id) AS grouping_id, grouping(value) AS grouping_value, id, value FROM test_table
GROUP BY id, value ORDER BY grouping_id, grouping_value;
