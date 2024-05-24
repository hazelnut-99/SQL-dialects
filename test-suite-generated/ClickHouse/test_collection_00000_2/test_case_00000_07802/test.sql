select if(number % 5, Null, toUInt64OrZero(toString(number))) from numbers(20);
