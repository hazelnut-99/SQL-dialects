select if(number % 5 == 0, toUInt32OrZero(toString(number)), toUInt32OrZero(toString(number + 1))) from numbers(20);
