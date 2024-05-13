SELECT accurateCastOrNull(if(number % 2, NULL, 'truex'), 'Bool') FROM numbers(4);
