SELECT multiIf(1, 'foo', (col1 % 3) = 0, 'bar', 'baz') FROM multi_if_check;
