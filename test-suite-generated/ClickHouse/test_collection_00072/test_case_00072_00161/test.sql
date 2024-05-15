SELECT multiIf(1, [col2, 'bar'], (col1 % 3) = 0, [col4, col5], [col6, 'bar']) FROM multi_if_check;
