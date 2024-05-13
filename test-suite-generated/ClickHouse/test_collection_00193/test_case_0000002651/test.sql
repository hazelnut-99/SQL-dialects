SELECT multiIf(1, 'foo', (col1 % 3) = 0, 'bar', col4) FROM multi_if_check;
