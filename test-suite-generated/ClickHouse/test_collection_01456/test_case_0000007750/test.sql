SELECT countIf(number, toNullable('a') IN ('a', 'b')) FROM numbers(100);
