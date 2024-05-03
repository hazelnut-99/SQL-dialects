SELECT DISTINCT bitXor(toFixedString('\x00\x01\x02\x03\x04\x05', 6), materialize(toFixedString('abcdef', 6))) FROM numbers(10);
