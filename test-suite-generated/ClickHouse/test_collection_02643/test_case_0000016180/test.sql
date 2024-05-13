select if(number % 5 == 0, Null, toInt64OrZero(toString(number))) from numbers(20);
