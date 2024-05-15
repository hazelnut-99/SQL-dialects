SELECT sum(u) FROM (SELECT intDiv(number, 16384) AS k, uniqCombined(18)(number % 16384) u FROM numbers(16384 * 100) GROUP BY k);
