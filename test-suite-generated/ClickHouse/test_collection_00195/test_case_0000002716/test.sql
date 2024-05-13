SELECT multiIf((col1 % 2) = 0, [col2, 'bar'], (col1 % 3) = 0, ['foo', 'bar'], [col6, col7]) FROM multi_if_check;
