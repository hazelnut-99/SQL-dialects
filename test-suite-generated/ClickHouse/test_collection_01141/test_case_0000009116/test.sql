select count() from (select number, number < 100 from numbers(2000) order by number < 100 desc limit 10 with ties);
