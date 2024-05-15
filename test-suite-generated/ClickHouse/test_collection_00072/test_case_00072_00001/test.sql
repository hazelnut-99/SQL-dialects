SELECT multiIf((col1 % 2) = 0, [col2, col3], (col1 % 3) = 0, [col4, col5], [col6, 'bar']) FROM multi_if_check;
