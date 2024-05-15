SELECT multiIf((col1 % 2) = 0, toFixedString(col2, 16), 1, 'bar', col4) FROM multi_if_check;
