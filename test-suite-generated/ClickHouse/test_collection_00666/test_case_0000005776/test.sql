SELECT quantileExactHigh(a), quantileExactHigh(b), quantileExactHigh(c) as x, toTypeName(x) FROM decimal WHERE a < 0;
