select min((n as a) + (1 as b)) c from (select number n from numbers(10)) where a > 0 and b > 0 having c > 0;
