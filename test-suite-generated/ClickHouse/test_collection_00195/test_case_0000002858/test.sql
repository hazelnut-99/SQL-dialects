SELECT multiIf(1, [col2, 'bar'], 1, ['foo', col5], ['foo', col7]) FROM multi_if_check;
