SELECT quantile(a), quantile(b), quantile(c) as x, toTypeName(x) FROM decimal WHERE a < 0;
