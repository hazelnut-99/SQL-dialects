SELECT FIRST_VALUEIf (number, NOT isNull(number) AND (assumeNotNull(number) > 5)) RESPECT NULLS from (SELECT if(number < 2, NULL, number) as number FROM numbers(10));
