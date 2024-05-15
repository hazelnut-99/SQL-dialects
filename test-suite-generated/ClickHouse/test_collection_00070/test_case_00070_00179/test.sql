SELECT multiIf(1, toFixedString(col2, 16), 1, col3, 'baz') FROM multi_if_check;
