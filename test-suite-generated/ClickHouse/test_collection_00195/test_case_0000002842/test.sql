SELECT multiIf(1, [col2, 'bar'], (col1 % 3) = 0, ['foo', col5], ['foo', col7]) FROM multi_if_check;
