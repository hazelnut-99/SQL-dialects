SELECT multiIf(1, 'foo', (col1 % 3) = 0, col3, col4) FROM multi_if_check;
