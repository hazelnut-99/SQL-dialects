select abs(e() - arraySum(arrayMap(x -> 1 / tgamma(x + 1), range(13)))) < 1.0e-9;
