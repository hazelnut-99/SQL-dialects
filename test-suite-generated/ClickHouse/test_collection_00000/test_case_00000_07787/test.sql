select if(number % 5 == 0, toInt32OrZero(toString(number)), toInt32OrZero(toString(number + 1))) from numbers(20);
