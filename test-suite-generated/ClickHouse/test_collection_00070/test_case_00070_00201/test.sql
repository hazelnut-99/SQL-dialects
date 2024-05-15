SELECT multiIf(1, toFixedString('foo', 16), (col1 % 3) = 0, toFixedString('bar', 16), toFixedString(col4, 16)) FROM multi_if_check;
