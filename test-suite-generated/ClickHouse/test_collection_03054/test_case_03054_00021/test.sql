SELECT anyOrNull(number) RESPECT NULLS from (Select if(number < 8, NULL, number) as number FROM numbers(10));
