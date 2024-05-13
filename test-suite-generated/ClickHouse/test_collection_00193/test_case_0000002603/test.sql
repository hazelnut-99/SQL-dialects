SELECT multiIf(1, toFixedString(col2, 16), 1, 'bar', col4) FROM multi_if_check;
