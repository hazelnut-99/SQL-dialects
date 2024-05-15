SELECT quantileInterpolatedWeighted(a, 1), quantileInterpolatedWeighted(b, 2), quantileInterpolatedWeighted(c, 3) as x, toTypeName(x) FROM decimal WHERE a < 0;
