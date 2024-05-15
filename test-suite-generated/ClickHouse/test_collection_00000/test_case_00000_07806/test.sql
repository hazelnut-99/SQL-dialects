select if(number % 5, Null, toInt128OrZero(toString(number))) from numbers(20);
