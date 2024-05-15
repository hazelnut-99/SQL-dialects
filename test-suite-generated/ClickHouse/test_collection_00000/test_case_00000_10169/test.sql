select CAST(number % 2 ? '0000:0000:0000:0000:0000:0000:0000:0000' : NULL, 'Nullable(IPv6)') from numbers(2);
