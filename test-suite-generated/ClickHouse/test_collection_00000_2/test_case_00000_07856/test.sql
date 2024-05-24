select if(number % 5 == 0, toDecimal256OrZero(toString(number), 5), Null) from numbers(20);
