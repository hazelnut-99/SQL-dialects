SELECT multiIf(1, toFixedString(col2, 16), (col1 % 3) = 0, toFixedString(col3, 16), 'baz') FROM multi_if_check;
