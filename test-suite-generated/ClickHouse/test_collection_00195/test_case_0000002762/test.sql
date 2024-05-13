SELECT multiIf((col1 % 2) = 0, ['foo', col3], 1, ['foo', col5], ['foo', col7]) FROM multi_if_check;
