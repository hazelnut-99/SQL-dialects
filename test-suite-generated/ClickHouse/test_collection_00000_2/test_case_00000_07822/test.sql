select if(number % 5, Null, toFloat32OrZero(toString(number))) from numbers(20);
