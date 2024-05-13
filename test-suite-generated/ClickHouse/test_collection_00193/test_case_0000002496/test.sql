SELECT multiIf((col1 % 2) = 0, toFixedString('foo', 16), 1, col3, toFixedString(col4, 16)) FROM multi_if_check;
