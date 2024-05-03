SELECT SUM(trades.price - tvs.tv) FROM
(SELECT k, t, t as price
    FROM (SELECT toUInt32(number) AS k FROM numbers(1000)) keys
    CROSS JOIN (SELECT toUInt32(number * 10) AS t FROM numbers(3000)) trade_times) trades
ASOF LEFT JOIN tvs USING(k,t);
