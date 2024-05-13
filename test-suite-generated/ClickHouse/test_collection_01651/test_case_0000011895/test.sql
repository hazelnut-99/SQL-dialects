select min((n + 1) as a) c from (select number n from numbers(10)) where a > 0 having c > 0;
