select if(number % 5 == 0, Null, toFloat64OrZero(toString(number))) from numbers(20);
