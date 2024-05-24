select if(number % 5 == 0, Null, toUInt8OrZero(toString(number))) from numbers(20);
