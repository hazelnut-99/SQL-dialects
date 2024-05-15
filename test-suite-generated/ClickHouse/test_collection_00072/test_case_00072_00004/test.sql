SELECT multiIf((col1 % 2) = 0, [col2, col3], (col1 % 3) = 0, [col4, 'bar'], [col6, col7]) FROM multi_if_check;
