select count(*) from big  inner join tbl_2 on (a IS NOT DISTINCT FROM tbl_2.b) where a >1  and a < 5000;
