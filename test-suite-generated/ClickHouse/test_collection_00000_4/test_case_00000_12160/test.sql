select regexpExtract(number::String || '-' || (2*number)::String, '(\\d+)-(\\d+)', number%3) from numbers(5);
