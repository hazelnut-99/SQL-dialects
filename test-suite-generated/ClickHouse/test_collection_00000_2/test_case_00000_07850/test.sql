select if(number % 5, Null, toDecimal64OrZero(toString(number), 5)) from numbers(20);
