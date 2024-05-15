select if(number % 5 == 0, toInt64OrZero(toString(number)), toInt64OrZero(toString(number + 1))) from numbers(20);
