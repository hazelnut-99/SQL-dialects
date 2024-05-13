select if(number % 5 == 0, toFloat64OrZero(toString(number)), Null) from numbers(20);
