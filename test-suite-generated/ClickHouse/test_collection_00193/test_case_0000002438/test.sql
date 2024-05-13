SELECT multiIf((col1 % 2) = 0, col2, 1, toFixedString(col3, 16), 'baz') FROM multi_if_check;
