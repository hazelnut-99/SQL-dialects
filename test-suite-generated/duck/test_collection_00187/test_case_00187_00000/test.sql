SELECT ref_1.nested_int_array AS c0
FROM all_types AS ref_1
INNER JOIN (SELECT NULL AS c8 FROM range(3)) AS subq_1 ON (ref_1."varchar" = ref_1."varchar")
INNER JOIN range(3) AS ref_4(time_tz) ON (subq_1.c8 = ref_4.time_tz);
