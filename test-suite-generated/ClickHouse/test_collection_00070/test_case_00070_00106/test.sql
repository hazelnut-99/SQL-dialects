SELECT multiIf((col1 % 2) = 0, 'foo', (col1 % 3) = 0, toFixedString('bar', 16), toFixedString('baz', 16)) FROM multi_if_check;
