SELECT multiIf((col1 % 2) = 0, [col2, col3], (col1 % 3) = 0, ['foo', col5], [col6, 'bar']) FROM multi_if_check;
