SELECT multiIf((col1 % 2) = 0, col2, 1, 'bar', toFixedString('baz', 16)) FROM multi_if_check;
