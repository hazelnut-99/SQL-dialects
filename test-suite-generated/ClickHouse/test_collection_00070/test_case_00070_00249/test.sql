SELECT multiIf(1, 'foo', 1, toFixedString('bar', 16), toFixedString(col4, 16)) FROM multi_if_check;
