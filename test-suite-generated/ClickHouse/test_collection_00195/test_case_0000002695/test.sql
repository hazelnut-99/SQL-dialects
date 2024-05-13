SELECT multiIf((col1 % 2) = 0, [col2, col3], 1, [col4, 'bar'], ['foo', 'bar']) FROM multi_if_check;
