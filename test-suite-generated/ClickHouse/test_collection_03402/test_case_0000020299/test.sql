select IPv4StringToNum(number % 2 ? '0.0.0.0' : NULL) from numbers(2);
