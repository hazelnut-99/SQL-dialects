SELECT multiIf(1, [col2, 'bar'], (col1 % 3) = 0, [col4, 'bar'], ['foo', 'bar']) FROM multi_if_check;
