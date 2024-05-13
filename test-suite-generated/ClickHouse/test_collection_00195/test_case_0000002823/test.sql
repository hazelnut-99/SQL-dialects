SELECT multiIf(1, [col2, col3], 1, [col4, 'bar'], ['foo', 'bar']) FROM multi_if_check;
