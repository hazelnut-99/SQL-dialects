SELECT multiIf(1, toFixedString('foo', 16), (col1 % 3) = 0, toFixedString('bar', 16), 'baz') FROM multi_if_check;
