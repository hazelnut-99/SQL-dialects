SELECT flatten(arrayMap(x -> arrayMap(y -> arrayMap(z -> range(z), range(y)), range(x)), range(number))) FROM numbers(6);
