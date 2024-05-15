SELECT multiIf(1, [col2, 'bar'], (col1 % 3) = 0, ['foo', 'bar'], [col6, 'bar']) FROM multi_if_check;
