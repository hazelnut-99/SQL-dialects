SELECT multiIf((col1 % 2) = 0, ['foo', col3], 1, ['foo', col5], ['foo', 'bar']) FROM multi_if_check;
