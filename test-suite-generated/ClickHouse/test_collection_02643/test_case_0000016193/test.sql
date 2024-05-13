select if(number % 5, Null, toUInt128OrZero(toString(number))) from numbers(20);
