select if(number % 5 == 0, Null, toUInt128OrZero(toString(number))) from numbers(20);
