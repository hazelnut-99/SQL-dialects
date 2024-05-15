SELECT multiIf((col1 % 2) = 0, ['foo', col3], (col1 % 3) = 0, ['foo', 'bar'], ['foo', col7]) FROM multi_if_check;
