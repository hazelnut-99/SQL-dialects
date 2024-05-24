select if(number % 5, Null, toDecimal128OrZero(toString(number), 5)) from numbers(20);
