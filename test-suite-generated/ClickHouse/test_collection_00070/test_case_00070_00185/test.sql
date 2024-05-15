SELECT multiIf(1, toFixedString(col2, 16), 1, toFixedString('bar', 16), toFixedString(col4, 16)) FROM multi_if_check;
