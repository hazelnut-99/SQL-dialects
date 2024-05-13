select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS DISTINCT FROM tbl_2.b AND a <> tbl_2.b) order by a,tbl_2.b;
