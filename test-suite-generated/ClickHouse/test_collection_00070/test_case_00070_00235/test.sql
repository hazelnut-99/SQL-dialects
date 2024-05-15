SELECT multiIf(1, 'foo', (col1 % 3) = 0, toFixedString('bar', 16), 'baz') FROM multi_if_check;
