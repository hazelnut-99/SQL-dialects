SELECT multiIf(2 > 1, 'Value', value) as a, isConstant(a) FROM multi_if_check;
