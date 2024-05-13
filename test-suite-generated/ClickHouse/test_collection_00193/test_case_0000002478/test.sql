SELECT multiIf((col1 % 2) = 0, toFixedString(col2, 16), 1, 'bar', 'baz') FROM multi_if_check;
