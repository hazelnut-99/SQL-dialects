SELECT multiIf(1, toFixedString(col2, 16), (col1 % 3) = 0, 'bar', toFixedString('baz', 16)) FROM multi_if_check;
