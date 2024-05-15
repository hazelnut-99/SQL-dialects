SELECT col, mapFilter((k, v) -> ((v % 10) > 1), col) FROM table_map ORDER BY id ASC;
