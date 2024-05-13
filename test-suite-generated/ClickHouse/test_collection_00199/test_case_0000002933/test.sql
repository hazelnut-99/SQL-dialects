SELECT multiIf(value == '1', 'ValueFirst', 2 > 1, 'ValueSecond', 'ElseValue') as a, isConstant(a) FROM multi_if_check;
