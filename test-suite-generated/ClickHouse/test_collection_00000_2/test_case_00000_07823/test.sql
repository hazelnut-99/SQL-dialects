select if(number % 5 == 0, toFloat64OrZero(toString(number)), toFloat64OrZero(toString(number + 1))) from numbers(20);
