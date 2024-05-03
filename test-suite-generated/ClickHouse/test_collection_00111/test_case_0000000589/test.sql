select count() from numbers(10) where exists(select number from numbers(10) where number > 8);
