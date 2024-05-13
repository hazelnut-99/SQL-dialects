SELECT DISTINCT bitXor(materialize(toFixedString('abc', 3)), toFixedString('\x00\x01\x02', 3)) FROM numbers(10);
