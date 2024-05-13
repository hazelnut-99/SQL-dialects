SELECT multiIf((col1 % 2) = 0, 'foo', (col1 % 3) = 0, 'bar', 'baz') FROM multi_if_check;
