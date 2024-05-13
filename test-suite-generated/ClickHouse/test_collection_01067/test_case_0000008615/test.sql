select 100 = length(format(concat((select arrayStringConcat(arrayMap(x ->'}', range(100)))), (select arrayStringConcat(arrayMap(x ->'{', range(100))))), ''));
