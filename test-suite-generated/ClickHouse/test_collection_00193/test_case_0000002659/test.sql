SELECT multiIf(1, 'foo', 1, toFixedString(col3, 16), col4) FROM multi_if_check;
