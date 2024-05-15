select if(number % 5 == 0, toInt256OrZero(toString(number)), Null) from numbers(20);
