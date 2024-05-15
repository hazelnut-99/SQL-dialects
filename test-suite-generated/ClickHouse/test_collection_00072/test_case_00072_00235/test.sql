SELECT multiIf(1, ['foo', 'bar'], (col1 % 3) = 0, ['foo', col5], ['foo', 'bar']) FROM multi_if_check;
