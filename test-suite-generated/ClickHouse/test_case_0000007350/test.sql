SELECT quantilesTDigest(0.95)(x) FROM (SELECT inf*(number%2-0.5) x FROM numbers(300));
