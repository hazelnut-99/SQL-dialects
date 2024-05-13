SELECT multiIf(1, toFixedString('foo', 16), (col1 % 3) = 0, 'bar', toFixedString('baz', 16)) FROM multi_if_check;
