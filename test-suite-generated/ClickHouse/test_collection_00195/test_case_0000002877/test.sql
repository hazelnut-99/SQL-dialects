SELECT multiIf(1, ['foo', col3], (col1 % 3) = 0, ['foo', 'bar'], [col6, 'bar']) FROM multi_if_check;
