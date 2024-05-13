SELECT multiIf((col1 % 2) = 0, ['foo', 'bar'], 1, [col4, col5], ['foo', col7]) FROM multi_if_check;
