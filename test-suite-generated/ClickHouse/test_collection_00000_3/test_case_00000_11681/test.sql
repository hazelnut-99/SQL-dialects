SELECT number, ip, ip % number FROM (SELECT number, toIPv4('1.2.3.4') as ip FROM numbers(10, 20));
