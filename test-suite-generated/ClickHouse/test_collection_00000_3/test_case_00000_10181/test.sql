SELECT accurateCastOrNull(if(number % 2, 'truex', NULL), 'Bool') FROM numbers(4);
