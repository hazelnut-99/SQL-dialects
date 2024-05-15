SELECT multiIf((col1 % 2) = 0, col2, 1, toFixedString('bar', 16), 'baz') FROM multi_if_check;
