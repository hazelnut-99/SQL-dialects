SELECT multiIf(1, col2, (col1 % 3) = 0, toFixedString('bar', 16), col4) FROM multi_if_check;
