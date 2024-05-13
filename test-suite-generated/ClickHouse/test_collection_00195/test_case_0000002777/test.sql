SELECT multiIf((col1 % 2) = 0, ['foo', 'bar'], (col1 % 3) = 0, ['foo', col5], [col6, 'bar']) FROM multi_if_check;
