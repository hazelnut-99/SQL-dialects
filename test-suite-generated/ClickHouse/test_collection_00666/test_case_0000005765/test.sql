SELECT quantileExactLow(a), quantileExactLow(b), quantileExactLow(c) as x, toTypeName(x) FROM decimal WHERE a < 0;
