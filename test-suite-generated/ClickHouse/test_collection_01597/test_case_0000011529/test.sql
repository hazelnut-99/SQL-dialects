select argMax(untuple(x)), min(x) from (select (number, number + 1) as x from numbers(10)) having tuple(untuple(min(x))).1 != 42;
