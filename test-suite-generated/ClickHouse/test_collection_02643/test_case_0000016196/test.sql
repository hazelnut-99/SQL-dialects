select if(number % 5 == 0, Null, toInt256OrZero(toString(number))) from numbers(20);
