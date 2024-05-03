SELECT bin(toFixedString('Hello', 10)) == bin(bitShiftRight(toFixedString('Hello', 10), 0));
