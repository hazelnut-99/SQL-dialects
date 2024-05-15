SELECT multiIf(1, toFixedString('foo', 16), (col1 % 3) = 0, col3, col4) FROM multi_if_check;
