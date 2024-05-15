SELECT count(), sum(ns[1]), max(ns[1]), sum(ns[2])/10 FROM (SELECT intDiv(number, 100) AS k, groupArray([number, number*10]) AS ns FROM numbers_mt GROUP BY k) ARRAY JOIN ns;
