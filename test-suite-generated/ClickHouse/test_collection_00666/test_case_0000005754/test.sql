SELECT quantileExact(a), quantileExact(b), quantileExact(c) as x, toTypeName(x) FROM decimal WHERE a < 0;
