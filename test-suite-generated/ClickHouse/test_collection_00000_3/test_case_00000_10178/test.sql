select IPv6StringToNum(number % 2 ? '0000:0000:0000:0000:0000:0000:0000:0000' : NULL) from numbers(2);
