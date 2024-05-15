select number as a from numbers(10) where a == any (select number from numbers(3, 3));
