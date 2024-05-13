SELECT k, js1.s, t2.s FROM (SELECT toUInt64(number / 3) AS k, sum(number) as s FROM numbers(10) GROUP BY toUInt64(number / 3) WITH TOTALS) js1 ANY LEFT JOIN t2 USING k ORDER BY k;
