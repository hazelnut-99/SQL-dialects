SELECT multiIf(1, col2, 1, toFixedString(col3, 16), toFixedString('baz', 16)) FROM multi_if_check;
