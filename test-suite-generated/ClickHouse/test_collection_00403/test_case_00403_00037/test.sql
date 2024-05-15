SELECT quantileExactWeighted(a, 1), quantileExactWeighted(b, 2), quantileExactWeighted(c, 3) as x, toTypeName(x) FROM decimal WHERE a < 0;
