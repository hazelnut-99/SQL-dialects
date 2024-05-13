select if(number % 5 == 0, toFloat32OrZero(toString(number)), toFloat32OrZero(toString(number + 1))) from numbers(20);
