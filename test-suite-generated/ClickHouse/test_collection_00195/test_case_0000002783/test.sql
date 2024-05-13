SELECT multiIf((col1 % 2) = 0, ['foo', 'bar'], (col1 % 3) = 0, ['foo', 'bar'], ['foo', 'bar']) FROM multi_if_check;
