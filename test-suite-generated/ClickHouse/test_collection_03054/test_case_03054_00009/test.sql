SELECT anyLastIf (number, isNull(number)) RESPECT NULLS from (SELECT if(number > 8, NULL, number) as number FROM numbers(10));
