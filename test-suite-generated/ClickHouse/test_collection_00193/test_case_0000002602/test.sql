SELECT multiIf(1, toFixedString(col2, 16), 1, toFixedString('bar', 16), 'baz') FROM multi_if_check;
