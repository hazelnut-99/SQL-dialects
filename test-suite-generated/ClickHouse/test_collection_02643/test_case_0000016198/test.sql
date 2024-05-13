select if(number % 5 == 0, toUInt256OrZero(toString(number)), toUInt256OrZero(toString(number + 1))) from numbers(20);
