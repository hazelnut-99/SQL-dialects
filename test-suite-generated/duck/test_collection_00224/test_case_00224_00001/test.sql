select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS NOT DISTINCT FROM tbl_2.b AND a <> tbl_2.b) ORDER BY 1;
