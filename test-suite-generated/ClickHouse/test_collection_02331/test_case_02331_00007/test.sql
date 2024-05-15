SELECT quantileTDigest(x) FROM (SELECT -inf AS x UNION ALL SELECT inf);
