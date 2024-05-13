select CAST(number % 2 ? '0.0.0.0' : NULL, 'Nullable(IPv4)') from numbers(2);
