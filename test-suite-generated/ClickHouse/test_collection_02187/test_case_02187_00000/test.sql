SELECT mapFilter((k, v) -> k like '%3' and v > 102, col) FROM table_map ORDER BY id;
