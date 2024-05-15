SELECT multiIf((col1 % 2) = 0, [col2, 'bar'], (col1 % 3) = 0, ['foo', col5], ['foo', 'bar']) FROM multi_if_check;
