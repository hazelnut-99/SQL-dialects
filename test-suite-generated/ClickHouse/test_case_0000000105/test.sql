select key, arr_x, arr_y, _table from test_in_tuple left array join x as arr_x, y as arr_y order by _table, arr_x, arr_y;
