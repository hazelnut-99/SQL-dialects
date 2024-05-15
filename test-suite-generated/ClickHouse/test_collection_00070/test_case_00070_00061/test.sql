SELECT multiIf((col1 % 2) = 0, toFixedString(col2, 16), 1, 'bar', toFixedString(col4, 16)) FROM multi_if_check;
