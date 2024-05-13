select if(number % 5, Null, toUInt32OrZero(toString(number))) from numbers(20);
