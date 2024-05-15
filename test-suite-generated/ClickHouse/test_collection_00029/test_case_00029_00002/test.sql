SELECT roundToExp2(number) AS k, length(groupArray(1)(hex(number) AS i)), length(groupArray(1024)(i)), length(groupArray(65536)(i)) AS s FROM numbers_mt GROUP BY k ORDER BY k LIMIT 9, 11;
