SELECT count(), sum(toUInt64(ns)), max(toUInt64(ns)) FROM (SELECT intDiv(number, 100) AS k, groupArray(toString(number)) AS ns FROM numbers_mt GROUP BY k) ARRAY JOIN ns;
