SELECT multiIf((col1 % 2) = 0, toFixedString(col2, 16), 1, toFixedString(col3, 16), toFixedString('baz', 16)) FROM multi_if_check;
