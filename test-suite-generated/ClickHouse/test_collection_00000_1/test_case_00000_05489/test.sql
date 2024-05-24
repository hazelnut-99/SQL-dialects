select argMax(untuple(x)) from (select (number, number + 1) as x from numbers(10));
