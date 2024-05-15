select if(number % 5, Null, toInt256OrZero(toString(number))) from numbers(20);
