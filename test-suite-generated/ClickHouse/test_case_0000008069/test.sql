SELECT any('1') FROM e JOIN ( SELECT 1 joinKey) AS da ON joinKey = a PREWHERE toString(a) = '1';
