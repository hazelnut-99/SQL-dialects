select if(number % 5 == 0, toDecimal128OrZero(toString(number), 5), Null) from numbers(20);
