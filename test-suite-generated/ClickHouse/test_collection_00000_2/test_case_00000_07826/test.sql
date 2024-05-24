select if(number % 5, Null, toFloat64OrZero(toString(number))) from numbers(20);
