select if(number != 0, 5 * (1 + intDiv(100, number)), toInt32(exp(log(throwIf(number) + 10)))) from numbers(5);
