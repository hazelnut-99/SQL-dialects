SELECT seriesPeriodDetectFFT(arrayMap(x -> if((x % 6) < 3, 3, 0), range(1000)));
