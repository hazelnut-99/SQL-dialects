select dumpColumnStructure([a]), arrayReduce('sumMap', [a], [a]) from (select [1, 2] a FROM numbers(2));
