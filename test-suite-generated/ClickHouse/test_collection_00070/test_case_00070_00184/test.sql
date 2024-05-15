SELECT multiIf(1, toFixedString(col2, 16), 1, toFixedString('bar', 16), col4) FROM multi_if_check;
