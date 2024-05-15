SELECT multiIf((col1 % 2) = 0, toFixedString('foo', 16), 1, col3, 'baz') FROM multi_if_check;
