SELECT number, ip, number % ip FROM (SELECT number, toIPv4OrNull('0.0.0.3') as ip FROM numbers(10, 20));
