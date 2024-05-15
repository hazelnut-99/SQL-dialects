SELECT multiIf((col1 % 2) = 0, [col2, 'bar'], 1, ['foo', col5], [col6, col7]) FROM multi_if_check;
