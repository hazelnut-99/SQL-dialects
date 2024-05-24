select if(number % 5 == 0, toDecimal128OrZero(toString(number), 5), toDecimal128OrZero(toString(number + 1), 5)) from numbers(20);
