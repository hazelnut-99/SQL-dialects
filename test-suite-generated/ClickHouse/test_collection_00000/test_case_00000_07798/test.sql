select if(number % 5, Null, toInt64OrZero(toString(number))) from numbers(20);
