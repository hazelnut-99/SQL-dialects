SELECT number from numbers(10) order by number limit (select sum(number), count() from numbers(3)).1;
