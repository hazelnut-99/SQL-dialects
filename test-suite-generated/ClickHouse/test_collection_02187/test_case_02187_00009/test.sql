SELECT mapExists((k, v) -> k LIKE '%2' AND v < 1000, col) FROM table_map ORDER BY id;
