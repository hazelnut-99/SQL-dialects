select regexpExtract(number::String || '-' || (2*number)::String, '(\\d+)-(\\d+)', 1) from numbers(3);
