SELECT multiIf(1, toFixedString('foo', 16), (col1 % 3) = 0, 'bar', 'baz') FROM multi_if_check;
