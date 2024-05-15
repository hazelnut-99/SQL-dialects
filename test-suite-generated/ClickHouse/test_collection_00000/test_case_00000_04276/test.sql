select 50 = length(format((select arrayStringConcat(arrayMap(x ->'{', range(100)))), ''));
