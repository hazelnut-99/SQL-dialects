SELECT multiIf((col1 % 2) = 0, toFixedString(col2, 16), (col1 % 3) = 0, col3, col4) FROM multi_if_check;
