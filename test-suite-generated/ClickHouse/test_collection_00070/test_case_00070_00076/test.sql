SELECT multiIf((col1 % 2) = 0, toFixedString('foo', 16), (col1 % 3) = 0, 'bar', col4) FROM multi_if_check;
