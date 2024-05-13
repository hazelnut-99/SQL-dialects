SELECT bin(toFixedString('Hello', 10)) == bin(bitShiftLeft(toFixedString('Hello', 10), 0));
