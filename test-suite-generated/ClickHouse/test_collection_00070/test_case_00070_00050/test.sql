SELECT multiIf((col1 % 2) = 0, toFixedString(col2, 16), 1, col3, toFixedString('baz', 16)) FROM multi_if_check;
