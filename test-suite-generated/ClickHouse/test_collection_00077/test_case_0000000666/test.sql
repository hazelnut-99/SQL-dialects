SELECT count(), sum(ns), max(ns) FROM (SELECT intDiv(number, 100) AS k, groupArray(number) AS ns FROM numbers_mt GROUP BY k) ARRAY JOIN ns;
