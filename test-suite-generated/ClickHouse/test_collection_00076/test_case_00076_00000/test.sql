SELECT multiIf(2 > 1, 'Value', 'ElseValue') as a, isConstant(a) FROM multi_if_check;
