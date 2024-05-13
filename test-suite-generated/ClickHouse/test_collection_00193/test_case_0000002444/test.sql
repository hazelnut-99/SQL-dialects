SELECT multiIf((col1 % 2) = 0, col2, 1, 'bar', toFixedString(col4, 16)) FROM multi_if_check;
