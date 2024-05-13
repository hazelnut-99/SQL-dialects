select if(number % 5 == 0, toUInt128OrZero(toString(number)), toUInt128OrZero(toString(number + 1))) from numbers(20);
