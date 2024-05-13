SELECT minIf(number::Nullable(String), number < 10) as number from numbers(10, 1000);
