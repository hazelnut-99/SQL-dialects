SELECT multiIf(1, ['foo', 'bar'], (col1 % 3) = 0, [col4, 'bar'], [col6, col7]) FROM multi_if_check;
