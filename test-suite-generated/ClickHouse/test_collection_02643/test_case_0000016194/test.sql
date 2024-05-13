select if(number % 5 == 0, toInt256OrZero(toString(number)), toInt256OrZero(toString(number + 1))) from numbers(20);
