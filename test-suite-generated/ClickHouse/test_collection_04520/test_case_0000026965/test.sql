select sumIf(number::UInt256, number % 10 == 0) from numbers(1000);
