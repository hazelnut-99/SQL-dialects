select count() from (select if(number >= 0, number, sleep(1)) from numbers(10000000));
