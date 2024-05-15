select count() from (select number from numbers(1000000) intersect select number from numbers(200000, 600000));
