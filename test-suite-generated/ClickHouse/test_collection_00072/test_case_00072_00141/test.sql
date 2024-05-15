SELECT multiIf(1, [col2, col3], (col1 % 3) = 0, ['foo', 'bar'], [col6, 'bar']) FROM multi_if_check;
