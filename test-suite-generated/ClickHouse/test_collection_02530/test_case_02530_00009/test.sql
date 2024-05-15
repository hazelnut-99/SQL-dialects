SELECT min(n::Nullable(String)) from (Select if(number < 15 and number % 2 == 1, number * 2, NULL) as n from numbers(10, 20));
