SELECT multiIf((col1 % 2) = 0, [col2, col3], 1, ['foo', 'bar'], [col6, 'bar']) FROM multi_if_check;
