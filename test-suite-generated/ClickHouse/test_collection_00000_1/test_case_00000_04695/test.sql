SELECT sum(u) FROM (SELECT intDiv(number, 8192) AS k, uniqCombined(number % 8192) u FROM numbers(8192 * 100) GROUP BY k);
