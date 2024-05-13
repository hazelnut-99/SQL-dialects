SELECT COUNT(*) OVER w c, SUM(four) OVER w s, cast(AVG(ten) OVER w * 10 as integer) a, RANK() over w r, DENSE_RANK() over w dr, ROW_NUMBER() OVER w rn FROM tenk1 WINDOW w AS () ORDER BY rn;
