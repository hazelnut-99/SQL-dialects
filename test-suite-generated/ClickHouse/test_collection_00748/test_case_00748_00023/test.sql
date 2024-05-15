select count() from (select number < 100, number from numbers(2000) order by number < 100 desc limit 10 with ties);
