SELECT nan AS x, isFinite(exp(x)) /* exp(nan) is allowed to return inf */, exp2(x), exp10(x), log(x), log2(x), log10(x), sqrt(x), cbrt(x);
