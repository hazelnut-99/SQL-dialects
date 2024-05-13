select CAST(number % 2 ? 'true' : NULL, 'Nullable(Bool)') from numbers(2);
