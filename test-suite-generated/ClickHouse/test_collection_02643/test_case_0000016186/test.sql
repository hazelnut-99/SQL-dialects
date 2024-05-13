select if(number % 5 == 0, toInt128OrZero(toString(number)), toInt128OrZero(toString(number + 1))) from numbers(20);
