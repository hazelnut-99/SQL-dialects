select if(number % 5 == 0, Null, toDecimal256OrZero(toString(number), 5)) from numbers(20);
