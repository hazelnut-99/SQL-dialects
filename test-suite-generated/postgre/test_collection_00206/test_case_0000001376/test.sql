select n, 10.0 ^ n as "10^n", (10.0 ^ n) * (10.0 ^ (-n)) = 1 as ok
from generate_series(-20, 20) n;
