select if(number % 5 == 0, Null, toInt32OrZero(toString(number))) from numbers(20);
