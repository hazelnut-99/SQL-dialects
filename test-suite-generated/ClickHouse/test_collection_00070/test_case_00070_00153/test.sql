SELECT multiIf(1, col2, 1, toFixedString('bar', 16), toFixedString(col4, 16)) FROM multi_if_check;
