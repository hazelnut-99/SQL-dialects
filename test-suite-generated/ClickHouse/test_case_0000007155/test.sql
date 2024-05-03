SELECT ref_5.pkey AS c_2_c2392_6 FROM t0 AS ref_5 WHERE 'J[' < multiIf(ref_5.pkey IN ( SELECT 1 ), bitShiftLeft(multiIf(ref_5.c0 > NULL, '1', ')'), 40), NULL);
