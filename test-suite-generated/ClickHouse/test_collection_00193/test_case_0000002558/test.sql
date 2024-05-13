SELECT multiIf(1, col2, (col1 % 3) = 0, 'bar', 'baz') FROM multi_if_check;
