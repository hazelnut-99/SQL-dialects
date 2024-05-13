SELECT multiIf(1, toFixedString(col2, 16), 1, col3, toFixedString(col4, 16)) FROM multi_if_check;
