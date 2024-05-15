select if(number % 5 == 0, Null, toUInt256OrZero(toString(number))) from numbers(20);
