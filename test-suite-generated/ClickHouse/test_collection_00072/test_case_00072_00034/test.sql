SELECT multiIf((col1 % 2) = 0, [col2, 'bar'], (col1 % 3) = 0, [col4, col5], ['foo', col7]) FROM multi_if_check;
