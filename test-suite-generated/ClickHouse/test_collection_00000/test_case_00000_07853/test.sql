select if(number % 5 == 0, Null, toDecimal128OrZero(toString(number), 5)) from numbers(20);
