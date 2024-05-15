SELECT sum(a), sum(b), sum(c), sumWithOverflow(a), sumWithOverflow(b), sumWithOverflow(c) FROM decimal WHERE a > 0;
