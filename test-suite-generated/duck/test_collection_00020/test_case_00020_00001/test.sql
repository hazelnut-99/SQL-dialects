SELECT  v.split(' ') strings,
        strings.apply(x -> x.lower()).filter(x -> x[1] == 't') lower,
        strings.apply(x -> x.upper()).filter(x -> x[1] == 'T') upper,
        lower + upper  as mix_case_srings
FROM varchars;
