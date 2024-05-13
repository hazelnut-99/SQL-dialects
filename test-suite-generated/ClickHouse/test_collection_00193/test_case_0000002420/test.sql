SELECT multiIf((col1 % 2) = 0, col2, (col1 % 3) = 0, toFixedString(col3, 16), toFixedString(col4, 16)) FROM multi_if_check;
