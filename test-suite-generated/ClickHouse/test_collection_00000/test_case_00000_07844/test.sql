select if(number % 5 == 0, toDecimal32OrZero(toString(number), 5), Null) from numbers(20);
