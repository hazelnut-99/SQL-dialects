SELECT multiIf(1, toFixedString(col2, 16), 1, 'bar', 'baz') FROM multi_if_check;
