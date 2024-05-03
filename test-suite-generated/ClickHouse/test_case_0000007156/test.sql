SELECT subq_0.pkey as c_1_c1193_15 FROM t5 AS subq_0 WHERE sipHash128(0, subq_0.c18, bitShiftRight(case when false then (sipHash128(subq_0.pkey, subq_0.c18, 'S')) else '1' end, 0)) is not null;
