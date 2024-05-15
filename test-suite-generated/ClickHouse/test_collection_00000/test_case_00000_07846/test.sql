select if(number % 5, Null, toDecimal32OrZero(toString(number), 5)) from numbers(20);
