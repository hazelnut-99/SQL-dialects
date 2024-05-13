SELECT min(number) from (Select if(number % 2 == 1, NULL, -number::Int8) as number FROM numbers(128));
