SELECT v.split(' ').apply(x -> x.lower()).filter(x -> x[1] == 'h') FROM varchars;
