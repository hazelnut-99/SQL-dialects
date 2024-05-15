SELECT multiIf(1, toFixedString('foo', 16), 1, 'bar', 'baz') FROM multi_if_check;
