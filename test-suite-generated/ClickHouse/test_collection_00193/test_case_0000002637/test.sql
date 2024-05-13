SELECT multiIf(1, toFixedString('foo', 16), 1, 'bar', toFixedString('baz', 16)) FROM multi_if_check;
