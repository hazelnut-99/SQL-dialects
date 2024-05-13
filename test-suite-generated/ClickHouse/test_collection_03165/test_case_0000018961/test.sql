SELECT mapApply((k, v) -> (k, v + 1), col) FROM table_map ORDER BY id;
