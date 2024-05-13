select if(number % 5 == 0, Null, toInt8OrZero(toString(number))) from numbers(20);
