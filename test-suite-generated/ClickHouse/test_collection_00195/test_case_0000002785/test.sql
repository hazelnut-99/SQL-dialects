SELECT multiIf((col1 % 2) = 0, ['foo', 'bar'], 1, [col4, col5], [col6, 'bar']) FROM multi_if_check;
