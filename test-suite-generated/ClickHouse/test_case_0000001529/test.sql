SELECT DISTINCT bitXor(toFixedString('\x00\x01\x02', 3), materialize(toFixedString('abc', 3))) FROM numbers(10);
