SELECT multiIf((col1 % 2) = 0, col2, (col1 % 3) = 0, 'bar', col4) FROM multi_if_check;
