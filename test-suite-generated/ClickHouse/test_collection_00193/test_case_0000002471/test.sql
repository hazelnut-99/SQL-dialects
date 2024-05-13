SELECT multiIf((col1 % 2) = 0, toFixedString(col2, 16), 1, toFixedString('bar', 16), col4) FROM multi_if_check;
