select if(number % 5 == 0, Null, toInt128OrZero(toString(number))) from numbers(20);
