SELECT multiIf(1, 'foo', 1, toFixedString(col3, 16), 'baz') FROM multi_if_check;
