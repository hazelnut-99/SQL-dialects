SELECT multiIf((col1 % 2) = 0, 'foo', 1, toFixedString(col3, 16), toFixedString(col4, 16)) FROM multi_if_check;
