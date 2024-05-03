select number as a from numbers(10) where a != any (select 5 from numbers(3, 3));
