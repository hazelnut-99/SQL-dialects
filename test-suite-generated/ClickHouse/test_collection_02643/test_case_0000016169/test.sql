select if(number % 5, Null, toUInt8OrZero(toString(number))) from numbers(20);
