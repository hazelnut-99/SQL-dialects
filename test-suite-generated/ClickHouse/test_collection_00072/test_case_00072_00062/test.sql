SELECT multiIf((col1 % 2) = 0, [col2, 'bar'], 1, ['foo', 'bar'], ['foo', col7]) FROM multi_if_check;
