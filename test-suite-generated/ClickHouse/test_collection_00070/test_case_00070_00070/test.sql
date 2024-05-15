SELECT multiIf((col1 % 2) = 0, toFixedString('foo', 16), (col1 % 3) = 0, toFixedString(col3, 16), toFixedString('baz', 16)) FROM multi_if_check;
