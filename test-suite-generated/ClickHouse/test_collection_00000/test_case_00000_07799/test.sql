select if(number % 5 == 0, toUInt64OrZero(toString(number)), toUInt64OrZero(toString(number + 1))) from numbers(20);
