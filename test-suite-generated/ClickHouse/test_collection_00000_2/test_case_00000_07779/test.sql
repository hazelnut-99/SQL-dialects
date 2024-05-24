select if(number % 5 == 0, toInt8OrZero(toString(number)), toInt8OrZero(toString(number + 1))) from numbers(20);
