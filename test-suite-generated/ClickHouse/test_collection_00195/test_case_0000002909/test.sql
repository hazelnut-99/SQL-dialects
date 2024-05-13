SELECT multiIf(1, ['foo', 'bar'], (col1 % 3) = 0, ['foo', 'bar'], [col6, 'bar']) FROM multi_if_check;
