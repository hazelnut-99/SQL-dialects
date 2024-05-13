SELECT multiIf(1, col2, 1, toFixedString('bar', 16), 'baz') FROM multi_if_check;
