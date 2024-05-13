SELECT count() <= 1 FROM (SELECT number FROM numbers(10) LIMIT randConstant() % 2);
