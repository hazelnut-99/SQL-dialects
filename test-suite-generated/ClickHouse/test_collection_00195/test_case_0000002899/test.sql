SELECT multiIf(1, ['foo', 'bar'], (col1 % 3) = 0, [col4, col5], ['foo', 'bar']) FROM multi_if_check;
