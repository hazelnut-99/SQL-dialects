SELECT multiIf((col1 % 2) = 0, ['foo', 'bar'], 1, ['foo', col5], ['foo', 'bar']) FROM multi_if_check;
