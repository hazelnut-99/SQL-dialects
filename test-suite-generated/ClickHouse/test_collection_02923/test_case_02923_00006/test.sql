SELECT seriesPeriodDetectFFT(arrayMap(x -> abs((x % 6) - 3), range(1000)));
