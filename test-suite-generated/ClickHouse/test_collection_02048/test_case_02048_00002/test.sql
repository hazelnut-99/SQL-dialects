select count() from (select number from numbers(100) intersect select number from numbers(20, 60) except select number from numbers(30, 20) except select number from numbers(60, 20));
