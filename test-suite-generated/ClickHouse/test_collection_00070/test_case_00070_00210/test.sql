SELECT multiIf(1, toFixedString('foo', 16), 1, col3, toFixedString('baz', 16)) FROM multi_if_check;
