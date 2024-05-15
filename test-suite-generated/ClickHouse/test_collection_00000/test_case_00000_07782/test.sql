select if(number % 5, Null, toInt8OrZero(toString(number))) from numbers(20);
